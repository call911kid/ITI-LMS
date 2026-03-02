-- create trigger that prevent the duplicate of the same choice in the same question
CREATE TRIGGER TR_PreventDuplicateChoice
ON Choice
INSTEAD OF INSERT
AS
BEGIN
    BEGIN TRY
        IF EXISTS (
            SELECT 1
            FROM inserted i
            JOIN Choice c
              ON i.QuestionId = c.QuestionId
             AND i.ChoiceText = c.ChoiceText
        )
        BEGIN
            RAISERROR('This choice already exists for this question',16,1);
            RETURN;
        END

        INSERT INTO Choice (QuestionId, ChoiceText)
        SELECT QuestionId, ChoiceText FROM inserted;
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW
    END CATCH
END
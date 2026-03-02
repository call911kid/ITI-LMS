-- create trigger that prevent the deletion of question has choices
CREATE TRIGGER TR_PreventDeleteQuestionWithChoices
ON Question
INSTEAD OF DELETE
AS
BEGIN
    BEGIN TRY
        IF EXISTS (
            SELECT 1
            FROM deleted d
            JOIN Choice c ON d.QuestionId = c.QuestionId
        )
        BEGIN
            RAISERROR('Cannot delete question that has choices',16,1);
            RETURN;
        END

        DELETE FROM Question
        WHERE QuestionId IN (SELECT QuestionId FROM deleted);
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW
    END CATCH
END
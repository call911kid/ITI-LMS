-- create procedure that add choice
CREATE PROCEDURE USP_AddChoice
	@QuestionId INT,
	@ChoiceText NVARCHAR(200)
AS
BEGIN
    BEGIN TRY
        INSERT INTO Choice (QuestionId, ChoiceText)
        VALUES (@QuestionId, @ChoiceText);
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW
    END CATCH
END
-- create procedure that get all choices by question

CREATE PROCEDURE USP_GetChoicesByQuestion
	@QuestionId INT
AS
BEGIN
    BEGIN TRY
        SELECT * FROM Choice
        WHERE QuestionId = @QuestionId;
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW
    END CATCH
END
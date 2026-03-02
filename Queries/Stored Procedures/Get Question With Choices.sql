-- create procedure that get all questions with choices

CREATE PROCEDURE USP_GetQuestionWithChoices
@QuestionId INT
AS
BEGIN
    BEGIN TRY
        SELECT *
        FROM VW_QuestionWithChoices
        WHERE QuestionId = @QuestionId;
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW
    END CATCH
END
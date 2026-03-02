-- create procedure that add new question

CREATE PROCEDURE USP_AddQuestion
	@QuestionBody NVARCHAR(200),
	@QuestionType NVARCHAR(50),
	@CorrectAnswer NVARCHAR(200)
AS
BEGIN
    BEGIN TRY
        INSERT INTO Question (QuestionBody, QuestionType, CorrectAnswer)
        VALUES (@QuestionBody, @QuestionType, @CorrectAnswer);
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW
    END CATCH
END
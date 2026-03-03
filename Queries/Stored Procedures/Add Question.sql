-- create procedure that add new question

CREATE PROCEDURE USP_AddQuestion
	@QuestionBody NVARCHAR(200),
	@QuestionType NVARCHAR(50),
	@CorrectAnswer NVARCHAR(200),
	@CourseId INT
AS
BEGIN
    BEGIN TRY
        INSERT INTO Question (QuestionBody, QuestionType, CorrectAnswer , CourseId)
        VALUES (@QuestionBody, @QuestionType, @CorrectAnswer , @CourseId);
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW
    END CATCH
END



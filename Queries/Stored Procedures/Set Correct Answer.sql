CREATE PROCEDURE USP_SetCorrectAnswer
    @QuestionId INT,
    @ChoiceId INT --  True/False
AS
BEGIN
    DECLARE @InstructorId INT = dbo.GetCurrentUserID();

    IF EXISTS (
        SELECT 1
        FROM Questions q
        JOIN Courses c ON q.CourseId = c.CourseId
        WHERE q.QuestionId = @QuestionId
          AND c.InstructorId = @InstructorId
    )
    BEGIN
        UPDATE Questions
        SET CorrectChoiceId = @ChoiceId
        WHERE QuestionId = @QuestionId;
    END
    ELSE
    BEGIN
        RAISERROR('Instructor not allowed to set correct answer for this question.', 16, 1);
    END
END;

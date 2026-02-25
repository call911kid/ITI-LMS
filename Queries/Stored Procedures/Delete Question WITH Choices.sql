CREATE PROCEDURE USP_DeleteQuestion
    @InstructorId INT,
    @QuestionId INT
AS
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM Question q
        JOIN Class c ON q.CourseId = c.CourseId
        WHERE q.QuestionId = @QuestionId AND c.InstructorId = @InstructorId
    )
    BEGIN
        DELETE FROM Choice
        WHERE QuestionId = @QuestionId;

        DELETE FROM Question
        WHERE QuestionId = @QuestionId;
    END
    ELSE
    BEGIN
        RAISERROR('Instructor not allowed to delete this question.', 16, 1);
    END
END

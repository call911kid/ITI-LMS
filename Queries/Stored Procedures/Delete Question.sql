CREATE PROCEDURE USP_DeleteQuestion
    @InstructorId INT,
    @QuestionId INT
AS
BEGIN
    --check
    IF EXISTS (
        SELECT 1 
        FROM Questions q
        JOIN Courses c ON q.CourseId = c.CourseId
        WHERE q.QuestionId = @QuestionId AND c.InstructorId = @InstructorId
    )
    BEGIN
        DELETE FROM Questions WHERE QuestionId = @QuestionId;
    END
    ELSE
    BEGIN
        RAISERROR('Instructor not allowed to delete this question.', 16, 1);
    END
END

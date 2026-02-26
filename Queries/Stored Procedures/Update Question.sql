-------Good logic... but the column names are missing and need a complete review, editing, and checking.
CREATE PROCEDURE USP_UpdateQuestion
    @QuestionId INT,
    @QuestionText NVARCHAR(MAX)
AS
BEGIN
    DECLARE @InstructorId INT = dbo.GetCurrentUserID();

    IF EXISTS (
        SELECT 1 
        FROM Questions q
        JOIN Courses c ON q.CourseId = c.CourseId
        WHERE q.QuestionId = @QuestionId AND c.InstructorId = @InstructorId
    )
    BEGIN
        UPDATE Questions
        SET QuestionText = @QuestionText,
            ModifiedDate = GETDATE()
        WHERE QuestionId = @QuestionId;
    END
    ELSE
    BEGIN
        RAISERROR('Instructor not allowed to update this question.', 16, 1);
    END
END;

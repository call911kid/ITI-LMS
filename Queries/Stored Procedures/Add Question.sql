
CREATE PROCEDURE USP_AddQuestion
    @CourseId INT,
    @QuestionText NVARCHAR(MAX),
    @QuestionType NVARCHAR(10) -- 'MCQ', 'TF', 'Text'
AS
BEGIN
    DECLARE @InstructorId INT = dbo.GetCurrentUserID();

    IF EXISTS (SELECT 1 FROM Courses WHERE CourseId = @CourseId AND InstructorId = @InstructorId)
    BEGIN
        INSERT INTO Questions (CourseId, QuestionText, QuestionType, CreatedBy)
        VALUES (@CourseId, @QuestionText, @QuestionType, @InstructorId);

        SELECT SCOPE_IDENTITY() AS NewQuestionId;
    END
    ELSE
    BEGIN
        RAISERROR('Instructor not allowed to add question to this course.', 16, 1);
    END
END;

CREATE PROCEDURE USP_AddMCQOption
    @QuestionId INT,
    @OptionText NVARCHAR(MAX)
AS
BEGIN
    DECLARE @InstructorId INT = dbo.GetCurrentUserID();

    IF EXISTS (
        SELECT 1
        FROM Questions q
        JOIN Courses c ON q.CourseId = c.CourseId
        WHERE q.QuestionId = @QuestionId
          AND c.InstructorId = @InstructorId
          AND q.QuestionType = 'MCQ'
    )
    BEGIN
        INSERT INTO Choice (QuestionId, ChoiceText)
        VALUES (@QuestionId, @OptionText);
    END
    ELSE
    BEGIN
        RAISERROR('Instructor not allowed to add option to this question.', 16, 1);
    END
END;

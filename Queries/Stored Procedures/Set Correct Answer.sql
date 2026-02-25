CREATE PROCEDURE USP_SetCorrectAnswer
    @QuestionId INT,
    @ChoiceId INT
AS
BEGIN
    DECLARE @InstructorId INT = dbo.GetCurrentUserID();

    IF EXISTS (
        SELECT 1
        FROM Question q
        JOIN Course c ON q.CourseId = c.CourseId
        JOIN Class cl ON cl.CourseId = c.CourseId
        WHERE q.QuestionId = @QuestionId
          AND cl.InstructorId = @InstructorId
    )
    BEGIN
        DECLARE @CorrectAnswer NVARCHAR(MAX);

        SELECT @CorrectAnswer = ChoiceText
        FROM Choice
        WHERE ChoiceId = @ChoiceId
          AND QuestionId = @QuestionId;

        UPDATE Question
        SET CorrectAnswer = @CorrectAnswer
        WHERE QuestionId = @QuestionId;
    END
    ELSE
    BEGIN
        RAISERROR('Instructor not allowed to set correct answer for this question.', 16, 1);
    END
END;

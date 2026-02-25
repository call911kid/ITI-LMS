CREATE PROCEDURE USP_RemoveQuestionFromExam
    @ExamId INT,
    @QuestionId INT
AS
BEGIN
    DECLARE @InstructorId INT = dbo.GetCurrentUserID();

    IF EXISTS (
        SELECT 1
        FROM Exams e
        JOIN Courses c ON e.CourseId = c.CourseId
        WHERE e.ExamId = @ExamId
          AND c.InstructorId = @InstructorId
    )
    BEGIN
        DELETE FROM ExamQuestions
        WHERE ExamId = @ExamId
          AND QuestionId = @QuestionId;
    END
    ELSE
    BEGIN
        RAISERROR('Instructor not allowed to remove question from this exam.', 16, 1);
    END
END;

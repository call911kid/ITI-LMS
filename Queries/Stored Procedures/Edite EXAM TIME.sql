CREATE PROCEDURE USP_SetExamSchedule
    @ExamId INT,
    @StartTime DATETIME,
    @EndTime DATETIME
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
        UPDATE Exams
        SET StartTime = @StartTime,
            EndTime = @EndTime
        WHERE ExamId = @ExamId;
    END
    ELSE
    BEGIN
        RAISERROR('Instructor not allowed to set schedule for this exam.', 16, 1);
    END
END;

-----Good logic... we need to create and test

CREATE PROCEDURE USP_UpdateExamSchedule
    @ExamId INT,
    @StartTime DATETIME = NULL,
    @EndTime DATETIME = NULL
AS
BEGIN
    DECLARE @InstructorId INT = dbo.GetCurrentUserID();

    -- Check if instructor can modify this exam
    IF NOT EXISTS (
        SELECT 1
        FROM Exam e
        JOIN Class cl ON e.IntakeTrackId = cl.IntakeTrackId
        WHERE e.ExamId = @ExamId
          AND cl.InstructorId = @InstructorId
    )
    BEGIN
        RAISERROR('Instructor not allowed to set schedule for this exam.', 16, 1);
        RETURN;
    END

    -- Update only the columns provided
    UPDATE Exam
    SET 
        StartTime = COALESCE(@StartTime, StartTime),
        EndTime   = COALESCE(@EndTime, EndTime)
    WHERE ExamId = @ExamId;
END;

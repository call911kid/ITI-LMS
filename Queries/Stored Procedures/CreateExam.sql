CREATE PROCEDURE USP_CreateExam
    @CourseId INT,
    @ExamType NVARCHAR(25),
    @Intake NVARCHAR(50),
    @Branch NVARCHAR(50),
    @Track NVARCHAR(50),
    @StartTime DATETIME,
    @EndTime DATETIME
AS
BEGIN
    DECLARE @InstructorId INT = dbo.GetCurrentUserID();
    DECLARE @IntakeTrackId INT;

    -- تأكد إن المدرس يملك الكورس
    IF NOT EXISTS (SELECT 1 FROM Course WHERE CourseId = @CourseId)
    BEGIN
        RAISERROR('Course not found.', 16, 1);
        RETURN;
    END

    -- الحصول على IntakeTrackId المناسب
    SELECT @IntakeTrackId = it.IntakeTrackId
    FROM IntakeTrack it
    JOIN Intake i ON it.IntakeId = i.IntakeId
    JOIN Branch b ON it.BranchId = b.BranchId
    JOIN Track t ON it.TrackId = t.TrackId
    JOIN Class cl ON cl.IntakeTrackId = it.IntakeTrackId
    WHERE i.IntakeName = @Intake
      AND b.BranchName = @Branch
      AND t.TrackName = @Track
      AND cl.CourseId = @CourseId
      AND cl.InstructorId = @InstructorId;

    IF @IntakeTrackId IS NULL
    BEGIN
        RAISERROR('Invalid Intake/Branch/Track or instructor not allowed.', 16, 1);
        RETURN;
    END

    -- إنشاء الامتحان
    INSERT INTO Exam (CourseId, ExamType, IntakeTrackId, StartTime, EndTime)
    VALUES (@CourseId, @ExamType, @IntakeTrackId, @StartTime, @EndTime);

    SELECT SCOPE_IDENTITY() AS NewExamId;
END;

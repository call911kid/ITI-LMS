CREATE PROCEDURE USP_CreateExam
    @CourseId INT,
    @ExamType NVARCHAR(20),
    @Intake NVARCHAR(20),
    @Branch NVARCHAR(20),
    @Track NVARCHAR(20),
    @StartTime DATETIME,
    @EndTime DATETIME
AS
BEGIN
    DECLARE @InstructorId INT = dbo.GetCurrentUserID();

    IF EXISTS (SELECT 1 FROM Courses WHERE CourseId = @CourseId AND InstructorId = @InstructorId)
    BEGIN
        INSERT INTO Exams (CourseId, ExamType, Intake, Branch, Track, StartTime, EndTime, CreatedBy)
        VALUES (@CourseId, @ExamType, @Intake, @Branch, @Track, @StartTime, @EndTime, @InstructorId);

        SELECT SCOPE_IDENTITY() AS NewExamId;
    END
    ELSE
    BEGIN
        RAISERROR('Instructor not allowed to create exam for this course.', 16, 1);
    END
END;

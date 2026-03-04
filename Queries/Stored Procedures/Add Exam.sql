-- adds a new exam with instructor authorization check and making sure that a standard exam has been conducted before a corrective one is added

CREATE OR ALTER PROCEDURE [dbo].[USP_AddExam]
    @courseId      INT,
    @examType      NVARCHAR(25),
    @intakeTrackId INT,
    @startTime     DATETIME,
    @endTime       DATETIME
AS
BEGIN
    DECLARE @instructorId INT = [dbo].[FN_GetCurrentInstructorId]();

    BEGIN TRY
        IF NOT EXISTS (
            SELECT 1
            FROM [dbo].[Class]
            WHERE [IntakeTrackId] = @intakeTrackId
              AND [CourseId]      = @courseId
              AND [InstructorId]  = @instructorId
        )
        BEGIN
            RAISERROR('not authorized to create an exam for this class.', 16, 1);
        END

        IF @examType = 'Corrective'
        BEGIN
            IF NOT EXISTS (
                SELECT 1
                FROM [dbo].[Exam]
                WHERE [CourseId]      = @courseId
                  AND [IntakeTrackId] = @intakeTrackId
                  AND [ExamType]      = 'Exam'
            )
            BEGIN
                RAISERROR('a corrective exam cannot be created because no standard exam was found for this course.', 16, 1);
            END
        END

        INSERT INTO [dbo].[Exam] ([CourseId], [ExamType], [IntakeTrackId], [StartTime], [EndTime])
        VALUES (@courseId, @examType, @intakeTrackId, @startTime, @endTime);

    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END;
GO

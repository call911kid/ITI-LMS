CREATE PROCEDURE [dbo].[USP_GetInstructors]
    @InstructorId INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        IF @InstructorId IS NOT NULL
        BEGIN
            IF NOT EXISTS (SELECT 1 FROM [dbo].[Instructor] WHERE [InstructorId] = @InstructorId)
            BEGIN
                RAISERROR('Instructor with this ID does not exist.', 16, 1);
                RETURN;
            END

            SELECT 
                I.[InstructorId],
                I.[InstructorName],
                U.[Username],
                U.[CreatedAt],
                C.[ClassId],
                CO.[CourseName],
                IT.[IntakeTrackId],
                T.[TrackName]
            FROM [dbo].[Instructor] I
            INNER JOIN [dbo].[User]        U  ON I.[UserId]        = U.[UserId]
            LEFT  JOIN [dbo].[Class]       C  ON I.[InstructorId]  = C.[InstructorId]
            LEFT  JOIN [dbo].[Course]      CO ON C.[CourseId]      = CO.[CourseId]
            LEFT  JOIN [dbo].[IntakeTrack] IT ON C.[IntakeTrackId] = IT.[IntakeTrackId]
            LEFT  JOIN [dbo].[Track]       T  ON IT.[TrackId]      = T.[TrackId]
            WHERE I.[InstructorId] = @InstructorId;
        END
        ELSE
        BEGIN
            SELECT 
                I.[InstructorId],
                I.[InstructorName],
                U.[Username],
                U.[CreatedAt],
                C.[ClassId],
                CO.[CourseName],
                IT.[IntakeTrackId],
                T.[TrackName]
            FROM [dbo].[Instructor] I
            INNER JOIN [dbo].[User]        U  ON I.[UserId]        = U.[UserId]
            LEFT  JOIN [dbo].[Class]       C  ON I.[InstructorId]  = C.[InstructorId]
            LEFT  JOIN [dbo].[Course]      CO ON C.[CourseId]      = CO.[CourseId]
            LEFT  JOIN [dbo].[IntakeTrack] IT ON C.[IntakeTrackId] = IT.[IntakeTrackId]
            LEFT  JOIN [dbo].[Track]       T  ON IT.[TrackId]      = T.[TrackId];
        END
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END;
GO


EXEC [dbo].[USP_GetInstructors];

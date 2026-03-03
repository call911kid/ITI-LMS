


CREATE PROCEDURE [dbo].[USP_GetStudents]
    @StudentId INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        IF @StudentId IS NOT NULL
        BEGIN
            IF NOT EXISTS (SELECT 1 FROM [dbo].[Student] WHERE [StudentId] = @StudentId)
            BEGIN
                RAISERROR('Student with this ID does not exist.', 16, 1);
                RETURN;
            END

            SELECT 
                S.[StudentId],
                S.[StudentName],
                U.[Username],
                U.[CreatedAt],
                IT.[IntakeTrackId],
                T.[TrackName],
                I.[IntakeName],
                I.[IntakeYear],
                B.[BranchName]
            FROM [dbo].[Student] S
            INNER JOIN [dbo].[User]        U  ON S.[UserId]        = U.[UserId]
            LEFT  JOIN [dbo].[IntakeTrack] IT ON S.[IntakeTrackId] = IT.[IntakeTrackId]
            LEFT  JOIN [dbo].[Track]       T  ON IT.[TrackId]      = T.[TrackId]
            LEFT  JOIN [dbo].[Intake]      I  ON IT.[IntakeId]     = I.[IntakeId]
            LEFT  JOIN [dbo].[Branch]      B  ON IT.[BranchId]     = B.[BranchId]
            WHERE S.[StudentId] = @StudentId;
        END
        ELSE
        BEGIN
            SELECT 
                S.[StudentId],
                S.[StudentName],
                U.[Username],
                U.[CreatedAt],
                IT.[IntakeTrackId],
                T.[TrackName],
                I.[IntakeName],
                I.[IntakeYear],
                B.[BranchName]
            FROM [dbo].[Student] S
            INNER JOIN [dbo].[User]        U  ON S.[UserId]        = U.[UserId]
            LEFT  JOIN [dbo].[IntakeTrack] IT ON S.[IntakeTrackId] = IT.[IntakeTrackId]
            LEFT  JOIN [dbo].[Track]       T  ON IT.[TrackId]      = T.[TrackId]
            LEFT  JOIN [dbo].[Intake]      I  ON IT.[IntakeId]     = I.[IntakeId]
            LEFT  JOIN [dbo].[Branch]      B  ON IT.[BranchId]     = B.[BranchId];
        END
    END TRY
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END;
GO




EXEC [dbo].[USP_GetStudents]

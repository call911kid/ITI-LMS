CREATE PROCEDURE [dbo].[USP_RemoveTrackFromIntakeAtBranch]
    @IntakeTrackId INT
AS
BEGIN

    BEGIN TRY
        DELETE FROM [dbo].[IntakeTrack]
        WHERE [IntakeTrackId] = @IntakeTrackId;
    END TRY
    
    BEGIN CATCH
        EXEC [dbo].[USP_LogIntoAudit];
        THROW;
    END CATCH
END
GO
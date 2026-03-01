-- get available tracks for a specific intake and branch

CREATE PROCEDURE [dbo].[USP_GetTracksForIntakeAtBranch]
	@IntakeId INT,
	@BranchId INT
AS
BEGIN

	BEGIN TRY
		SELECT 
			 [IntakeTrack].[IntakeTrackId], 
			 [Track].[TrackId], 
			 [Track].[TrackName]
		FROM [dbo].[IntakeTrack] JOIN [dbo].[Track] ON [IntakeTrack].[TrackId] = [Track].[TrackId]
		WHERE [IntakeTrack].[IntakeId] = @IntakeId 
		  AND [IntakeTrack].[BranchId] = @BranchId
	END TRY

	BEGIN CATCH
		EXEC [dbo].[USP_LogIntoAudit];
		THROW;
	END CATCH

END
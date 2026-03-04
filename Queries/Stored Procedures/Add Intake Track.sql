-- creates a connection between an Intake, a Track, and a Branch, relying on DB constraints not function validation

CREATE PROCEDURE [dbo].[USP_AddIntakeTrack]
	@intakeId INT,
	@trackId INT,
	@branchId INT
AS
BEGIN
	BEGIN TRY

		INSERT INTO [dbo].[IntakeTrack] ([IntakeId], [TrackId], [BranchId])
		VALUES (@intakeId, @trackId, @branchId);

	END TRY
	BEGIN CATCH
		EXEC [dbo].[USP_LogIntoAudit];
		THROW;
	END CATCH
END
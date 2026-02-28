CREATE PROCEDURE [dbo].[USP_OpenTrackForIntakeAtBranch]
    @IntakeId INT,
    @TrackId INT,
    @BranchId INT
AS
BEGIN

    BEGIN TRY
        INSERT INTO [dbo].[IntakeTrack] ([IntakeId], [TrackId], [BranchId])
        VALUES (@IntakeId, @TrackId, @BranchId);
    END TRY

    BEGIN CATCH
        EXEC [dbo].[USP_LogAudit];
        THROW;
    END CATCH
END
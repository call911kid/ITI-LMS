ALTER TABLE [dbo].[IntakeTrack]
ADD CONSTRAINT [Unique_Intake_Track_Branch] UNIQUE ([IntakeId], [TrackId], [BranchId]);

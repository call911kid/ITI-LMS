ALTER TABLE [dbo].[Department] DROP CONSTRAINT [FK_Department_Branch];

ALTER TABLE [dbo].[Department] DROP COLUMN [BranchId];

ALTER TABLE [dbo].[IntakeTrack] ADD [BranchId] INT NOT NULL;

ALTER TABLE [dbo].[IntakeTrack] ADD CONSTRAINT [FK_IntakeTrack_Branch] FOREIGN KEY([BranchId]) REFERENCES [dbo].[Branch] ([BranchId]);
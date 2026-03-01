CREATE TABLE [dbo].[IntakeTrack](
    [IntakeTrackId] INT IDENTITY(1,1),
    [IntakeId] INT NOT NULL,
    [TrackId] INT NOT NULL,
    [BranchId] INT NOT NULL,

    CONSTRAINT [PK_IntakeTrack] PRIMARY KEY([IntakeTrackId]),
    CONSTRAINT [FK_IntakeTrack_Intake] FOREIGN KEY([IntakeId]) REFERENCES [dbo].[Intake]([IntakeId]),
    CONSTRAINT [FK_IntakeTrack_Track] FOREIGN KEY([TrackId]) REFERENCES [dbo].[Track]([TrackId]),
    CONSTRAINT [FK_IntakeTrack_Branch] FOREIGN KEY([BranchId]) REFERENCES [dbo].[Branch]([BranchId]),
    
   
    CONSTRAINT [Unique_Intake_Track_Branch] UNIQUE ([IntakeId], [TrackId], [BranchId])  -- ensures a Track can only be assigned to a Branch once per Intake
)
CREATE TABLE [IntakeTrack](
	[IntakeTrackId] INT IDENTITY(1,1),
	[IntakeId] INT,
	[TrackId] INT,

	CONSTRAINT PK_IntakeTrack PRIMARY KEY([IntakeTrackId]),
	CONSTRAINT FK_IntakeTrack_Intake FOREIGN KEY([IntakeId]) REFERENCES [Intake]([IntakeId]),
	CONSTRAINT FK_IntakeTrack_Track FOREIGN KEY([TrackId]) REFERENCES [Track]([TrackId])
)
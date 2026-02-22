CREATE TABLE [Student](
	[StudentId] INT IDENTITY(1,1),
	[StudentName] NVARCHAR(100) NOT NULL,
	[UserId] INT NOT NULL,
	[IntakeTrackId] INT NOT NULL,

	CONSTRAINT PK_Student PRIMARY KEY([StudentId]),
	CONSTRAINT FK_Student_User FOREIGN KEY([UserId]) REFERENCES [User]([UserId]),
	CONSTRAINT FK_Student_IntakeTrack FOREIGN KEY([IntakeTrackId]) REFERENCES [IntakeTrack]([IntakeTrackId]),

	CONSTRAINT Unique_Student_User UNIQUE([UserId]), 
)
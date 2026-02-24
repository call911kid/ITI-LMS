CREATE TABLE [Exam](
	[ExamId] INT IDENTITY(1,1),
	[CourseId] INT NOT NULL,
	[IntakeTrackId] INT NOT NULL,
	[ExamType] NVARCHAR(25) NOT NULL,
	[StartTime] DATETIME NOT NULL,
	[EndTime] DATETIME NOT NULL,


	CONSTRAINT PK_Exam PRIMARY KEY([ExamId]),

	CONSTRAINT FK_Exam_Course FOREIGN KEY([CourseId]) REFERENCES [Course]([CourseId]),
	CONSTRAINT FK_Exam_IntakeTrack FOREIGN KEY([IntakeTrackId]) REFERENCES [IntakeTrack]([IntakeTrackId]),

	CONSTRAINT CHK_Exam_Times CHECK([EndTime] > [StartTime])

)
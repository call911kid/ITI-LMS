CREATE TABLE [Class](
	[ClassId] INT IDENTITY(1,1),
	[IntakeTrackId] INT NOT NULL,
	[InstructorId] INT NOT NULL,
	[CourseId] INT NOT NULL,


	CONSTRAINT PK_Class PRIMARY KEY([ClassId]),

	CONSTRAINT FK_Class_IntakeTrack FOREIGN KEY([IntakeTrackId]) REFERENCES [IntakeTrack]([IntakeTrackId]),
	CONSTRAINT FK_Class_Instructor FOREIGN KEY([InstructorId]) REFERENCES [Instructor]([InstructorId]),
	CONSTRAINT FK_Class_Course FOREIGN KEY([CourseId]) REFERENCES [Course]([CourseId]),

	CONSTRAINT Unique_Class_Course UNIQUE([IntakeTrackId], [CourseId]) --ensures one instructor for course per class
)
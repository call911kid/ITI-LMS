CREATE TABLE [Instructor](
	[InstructorId] INT IDENTITY(1,1),
	[InstructorName] NVARCHAR(50) NOT NULL,
	[UserId] INT NOT NULL,

	CONSTRAINT PK_Instructor PRIMARY KEY([InstructorId]),
	CONSTRAINT FK_Instructor_User FOREIGN KEY([UserId]) REFERENCES [User]([UserId]),

	CONSTRAINT Unique_Instructor_User UNIQUE([UserId])
)
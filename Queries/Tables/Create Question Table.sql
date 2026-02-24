CREATE TABLE Question(
	[QuestionId] INT IDENTITY(1,1),
	[CourseId] INT NOT NULL,
	[QuestionType] NVARCHAR(20) NOT NULL,
	[QuestionBody] NVARCHAR(MAX) NOT NULL,
	[CorrectAnswer] NVARCHAR(MAX) NOT NULL,

	CONSTRAINT PK_Question PRIMARY KEY([QuestionId]),

	CONSTRAINT FK_Question_Course FOREIGN KEY([CourseId]) REFERENCES [Course]([CourseId]),

	CONSTRAINT CHK_Question_Type CHECK([QuestionType] IN ('TF', 'MCQ', 'Text'))
)
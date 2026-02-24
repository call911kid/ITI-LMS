CREATE TABLE [ExamQuestion](
	[ExamQuestionId] INT IDENTITY(1,1),
	[ExamId] INT NOT NULL,
	[QuestionId] INT NOT NULL,
	[Marks] INT NOT NULL

	CONSTRAINT PK_ExamQuestion PRIMARY KEY([ExamQuestionId]),

	CONSTRAINT FK_ExamQuestion_Exam FOREIGN KEY([ExamId]) REFERENCES [Exam]([ExamId]),
	CONSTRAINT FK_ExamQuestion_Question FOREIGN KEY([QuestionId]) REFERENCES [Question]([QuestionId]),

	CONSTRAINT Unique_Exam_Question UNIQUE([ExamId], [QuestionId]),

	CONSTRAINT CHK_Question_Degree CHECK([Marks] > 0)

)
CREATE TABLE [StudentAnswer](
	[StudentAnswerId] INT IDENTITY(1,1),
	[StudentExamId] INT NOT NULL,
	[QuestionId] INT NOT NULL,
	[AnswerText] NVARCHAR(MAX),
	[MarksObtained] INT DEFAULT 0,

	CONSTRAINT PK_StudentAnswer PRIMARY KEY([StudentAnswerId]),

	CONSTRAINT FK_StudentAnswer_StudentExam FOREIGN KEY([StudentExamId]) REFERENCES [StudentExam]([StudentExamId]),
	CONSTRAINT FK_StudentAnswer_Question FOREIGN KEY([QuestionId]) REFERENCES [Question]([QuestionId]),

	CONSTRAINT Unique_StudentExam_Question UNIQUE([StudentExamId], [QuestionId]) -- prevent student from submitting an answer to the same question
)
CREATE TABLE [StudentAnswer](
	[StudentAnswerId] INT IDENTITY(1,1),
	[StudentExamId] INT NOT NULL,
	[ExamQuestionId] INT NOT NULL,
	[AnswerText] NVARCHAR(MAX),
	[MarksObtained] INT DEFAULT 0,

	CONSTRAINT PK_StudentAnswer PRIMARY KEY([StudentAnswerId]),

	CONSTRAINT FK_StudentAnswer_StudentExam FOREIGN KEY([StudentExamId]) REFERENCES [dbo].[StudentExam]([StudentExamId]),
	CONSTRAINT FK_StudentAnswer_ExamQuestion FOREIGN KEY([ExamQuestionId]) REFERENCES [dbo].[ExamQuestion]([ExamQuestionId]),

	CONSTRAINT Unique_StudentExam_ExamQuestion UNIQUE([StudentExamId], [ExamQuestionId]) -- prevent student from submitting an answer to the same exam question twice
)
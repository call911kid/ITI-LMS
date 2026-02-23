CREATE TABLE [StudentExam](
	[StudentExamId] INT IDENTITY(1,1),
	[StudentId] INT NOT NULL,
	[ExamId] INT NOT NULL,
	[TotalMarks] INT,
	[ExamStatus] NVARCHAR(20) NOT NULL DEFAULT 'Pending',


	CONSTRAINT PK_StudentExam PRIMARY KEY([StudentExamId]),

	CONSTRAINT FK_StudentExam_Student FOREIGN KEY([StudentId]) REFERENCES [Student]([StudentId]),
	CONSTRAINT FK_StudentExam_Exam FOREIGN KEY([ExamId]) REFERENCES [Exam]([ExamId]),

	CONSTRAINT Unique_Student_Exam UNIQUE([StudentId], [ExamId]),

	CONSTRAINT CHK_StudentExam_Status CHECK([ExamStatus] IN ('Pending', 'Completed', 'Missed'))


)
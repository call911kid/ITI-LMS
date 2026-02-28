USE[ITI_LMS]

CREATE TABLE [Branch](
	[BranchId] INT IDENTITY(1,1),
	[BranchName] NVARCHAR(50) NOT NULL,
	[BranchAddress] NVARCHAR(255),

	CONSTRAINT PK_Branch PRIMARY KEY([BranchId])
) ON [PRIMARY]


CREATE TABLE [Department](
	[DepartmentId] INT IDENTITY(1,1),
	[DepartmentName] NVARCHAR(50) NOT NULL,

	CONSTRAINT PK_Department PRIMARY KEY([DepartmentId])
) ON [PRIMARY]


CREATE TABLE [Intake](
	[IntakeId] INT IDENTITY(1,1),
	[IntakeName] NVARCHAR(50) NOT NULL,
	[IntakeYear] INT NOT NULL,

	CONSTRAINT PK_Intake PRIMARY KEY([IntakeId])
) ON [PRIMARY]


CREATE TABLE [Course](
	[CourseId] INT IDENTITY(1,1),
	[CourseName] NVARCHAR(100) NOT NULL,
	[CourseDescription] NVARCHAR(MAX),
	[MaxDegree] INT NOT NULL,
	[MinDegree] INT NOT NULL,

	CONSTRAINT PK_Course PRIMARY KEY([CourseId]),

	CONSTRAINT CHK_Course_Degrees CHECK([MaxDegree] >= [MinDegree] AND [MinDegree] >= 0)
) ON [PRIMARY]


CREATE TABLE [User] (
    [UserId] INT IDENTITY(1,1),
    [Username] NVARCHAR(50) NOT NULL,
    [Password] NVARCHAR(255) NOT NULL,
    [Role] NVARCHAR(50) NOT NULL, 
    [CreatedAt] DATETIME DEFAULT GETDATE(),

    CONSTRAINT [PK_User] PRIMARY KEY ([UserId]),

    CONSTRAINT [Unique_User_Username] UNIQUE ([Username]),

    CONSTRAINT [CHK_User_Role] CHECK ([Role] IN ('AdminRole', 'InstructorRole', 'StudentRole', 'TrainingManagerRole'))
) ON [PRIMARY]


CREATE TABLE [Track](
	[TrackId] INT IDENTITY(1,1),
	[TrackName] NVARCHAR(50) NOT NULL, 
	[DepartmentId] INT,

	CONSTRAINT PK_Track PRIMARY KEY([TrackId]),

	CONSTRAINT FK_Track_Department FOREIGN KEY([DepartmentId]) REFERENCES [Department]([DepartmentId])
) ON [PRIMARY]


CREATE TABLE [Instructor](
	[InstructorId] INT IDENTITY(1,1),
	[InstructorName] NVARCHAR(50) NOT NULL,
	[UserId] INT NOT NULL,

	CONSTRAINT PK_Instructor PRIMARY KEY([InstructorId]),

	CONSTRAINT FK_Instructor_User FOREIGN KEY([UserId]) REFERENCES [User]([UserId]),

	CONSTRAINT Unique_Instructor_User UNIQUE([UserId])
) ON [PRIMARY]


CREATE TABLE [IntakeTrack](
	[IntakeTrackId] INT IDENTITY(1,1),
	[IntakeId] INT NOT NULL,
	[TrackId] INT NOT NULL,
	[BranchId] INT NOT NULL,

	CONSTRAINT PK_IntakeTrack PRIMARY KEY([IntakeTrackId]),

	CONSTRAINT FK_IntakeTrack_Intake FOREIGN KEY([IntakeId]) REFERENCES [Intake]([IntakeId]),
	CONSTRAINT FK_IntakeTrack_Track FOREIGN KEY([TrackId]) REFERENCES [Track]([TrackId]),
	CONSTRAINT FK_IntakeTrack_Branch FOREIGN KEY([BranchId]) REFERENCES [Branch]([BranchId])
) ON [PRIMARY]


CREATE TABLE Question(
	[QuestionId] INT IDENTITY(1,1),
	[CourseId] INT NOT NULL,
	[QuestionType] NVARCHAR(20) NOT NULL,
	[QuestionBody] NVARCHAR(MAX) NOT NULL,
	[CorrectAnswer] NVARCHAR(MAX) NOT NULL,

	CONSTRAINT PK_Question PRIMARY KEY([QuestionId]),

	CONSTRAINT FK_Question_Course FOREIGN KEY([CourseId]) REFERENCES [Course]([CourseId]),

	CONSTRAINT CHK_Question_Type CHECK([QuestionType] IN ('TF', 'MCQ', 'Text'))
) ON [ExamData]


CREATE TABLE [Student](
	[StudentId] INT IDENTITY(1,1),
	[StudentName] NVARCHAR(100) NOT NULL,
	[UserId] INT NOT NULL,
	[IntakeTrackId] INT NULL,

	CONSTRAINT PK_Student PRIMARY KEY([StudentId]),

	CONSTRAINT FK_Student_User FOREIGN KEY([UserId]) REFERENCES [User]([UserId]),
	CONSTRAINT FK_Student_IntakeTrack FOREIGN KEY([IntakeTrackId]) REFERENCES [IntakeTrack]([IntakeTrackId]),

	CONSTRAINT Unique_Student_User UNIQUE([UserId])
) ON [PRIMARY]


CREATE TABLE [Class](
	[ClassId] INT IDENTITY(1,1),
	[IntakeTrackId] INT NOT NULL,
	[InstructorId] INT NOT NULL,
	[CourseId] INT NOT NULL,

	CONSTRAINT PK_Class PRIMARY KEY([ClassId]),

	CONSTRAINT FK_Class_IntakeTrack FOREIGN KEY([IntakeTrackId]) REFERENCES [IntakeTrack]([IntakeTrackId]),
	CONSTRAINT FK_Class_Instructor FOREIGN KEY([InstructorId]) REFERENCES [Instructor]([InstructorId]),
	CONSTRAINT FK_Class_Course FOREIGN KEY([CourseId]) REFERENCES [Course]([CourseId]),

	CONSTRAINT Unique_Class_Course UNIQUE([IntakeTrackId], [CourseId])
) ON [PRIMARY]


CREATE TABLE Choice(
	[ChoiceId] INT IDENTITY(1,1),
	[QuestionId] INT NOT NULL,
	[ChoiceText] NVARCHAR(MAX) NOT NULL,

	CONSTRAINT PK_Choice PRIMARY KEY([ChoiceId]),

	CONSTRAINT FK_Choice_Question FOREIGN KEY([QuestionId]) REFERENCES [Question]([QuestionId])
) ON [ExamData]


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

    CONSTRAINT CHK_Exam_Times CHECK([EndTime] > [StartTime]),
    CONSTRAINT CHK_Exam_Type CHECK ([ExamType] IN ('Exam', 'Corrective'))
) ON [ExamData]


CREATE TABLE [ExamQuestion](
	[ExamQuestionId] INT IDENTITY(1,1),
	[ExamId] INT NOT NULL,
	[QuestionId] INT NOT NULL,
	[Marks] INT NOT NULL,

	CONSTRAINT PK_ExamQuestion PRIMARY KEY([ExamQuestionId]),

	CONSTRAINT FK_ExamQuestion_Exam FOREIGN KEY([ExamId]) REFERENCES [Exam]([ExamId]),
	CONSTRAINT FK_ExamQuestion_Question FOREIGN KEY([QuestionId]) REFERENCES [Question]([QuestionId]),

	CONSTRAINT Unique_Exam_Question UNIQUE([ExamId], [QuestionId]),

	CONSTRAINT CHK_Question_Degree CHECK([Marks] > 0)
) ON [ExamData]


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
) ON [ExamData]


CREATE TABLE [StudentAnswer](
	[StudentAnswerId] INT IDENTITY(1,1),
	[StudentExamId] INT NOT NULL,
	[QuestionId] INT NOT NULL,
	[AnswerText] NVARCHAR(MAX),
	[MarksObtained] INT DEFAULT 0,

	CONSTRAINT PK_StudentAnswer PRIMARY KEY([StudentAnswerId]),

	CONSTRAINT FK_StudentAnswer_StudentExam FOREIGN KEY([StudentExamId]) REFERENCES [StudentExam]([StudentExamId]),
	CONSTRAINT FK_StudentAnswer_Question FOREIGN KEY([QuestionId]) REFERENCES [Question]([QuestionId]),

	CONSTRAINT Unique_StudentExam_Question UNIQUE([StudentExamId], [QuestionId])
) ON [ExamData]
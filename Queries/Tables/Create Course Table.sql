CREATE TABLE [Course](
	[CourseId] INT IDENTITY(1,1),
	[CourseName] NVARCHAR(100) NOT NULL,
	[CourseDescription] NVARCHAR(MAX),
	[MaxDegree] INT NOT NULL,
	[MinDegree] INT NOT NULL,

	CONSTRAINT PK_Course PRIMARY KEY([CourseId]),
	CONSTRAINT CHK_Course_Degrees CHECK([MaxDegree] >= [MinDegree] AND [MinDegree] >= 0)
);
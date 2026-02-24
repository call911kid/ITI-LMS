CREATE TABLE [Department](
	[DepartmentId] INT IDENTITY(1,1),
	[DepartmentName] NVARCHAR(50) NOT NULL,

	CONSTRAINT PK_Department PRIMARY KEY([DepartmentId])
)
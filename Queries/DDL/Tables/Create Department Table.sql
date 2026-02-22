CREATE TABLE [Department](
	[DepartmentId] INT IDENTITY(1,1),
	[DepartmentName] NVARCHAR(50) NOT NULL,
	[BranchId] INT,


	CONSTRAINT PK_Department PRIMARY KEY([DepartmentId]),
	CONSTRAINT FK_Department_Branch FOREIGN KEY([BranchId]) REFERENCES [Branch]([BranchId]) 

)
CREATE TABLE [User](
	[UserId] INT IDENTITY(1,1),
	[Email] NVARCHAR(50) NOT NULL,
	[Password] NVARCHAR(255) NOT NULL,
	[Role] NVARCHAR(20) NOT NULL,
	[CreatedAt] DATETIME DEFAULT GETDATE(),


	CONSTRAINT PK_User PRIMARY KEY([UserId]),
	CONSTRAINT Unique_User_Email UNIQUE([Email]),
	CONSTRAINT CHK_User_Role CHECK([Role] IN ('Admin', 'Training Manager', 'Instructor', 'Student'))
);
CREATE TABLE [Branch](
	[BranchId] INT IDENTITY(1,1),
	[BranchName] NVARCHAR(50) NOT NULL,
	[BranchAddress] NVARCHAR(255),


	CONSTRAINT PK_Branch PRIMARY KEY([BranchId])
)
CREATE TABLE [Track](
	[TrackId] INT IDENTITY(1,1),
	[TrackName] NVARCHAR(50) NOT NULL, 
	[DepartmentId] INT,


	CONSTRAINT PK_Track PRIMARY KEY([TrackId]),
	CONSTRAINT FK_Track_Department FOREIGN KEY([DepartmentId]) REFERENCES [Department]([DepartmentId])
)
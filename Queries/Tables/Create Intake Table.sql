CREATE TABLE [Intake](
	[IntakeId] INT IDENTITY(1,1),
	[IntakeName] NVARCHAR(50) NOT NULL,
	[IntakeYear] INT NOT NULL,

	CONSTRAINT PK_Intake PRIMARY KEY([IntakeId])
)
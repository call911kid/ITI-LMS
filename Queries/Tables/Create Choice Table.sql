CREATE TABLE Choice(
	[ChoiceId] INT IDENTITY(1,1),
	[QuestionId] INT NOT NULL,
	[ChoiceText] NVARCHAR(MAX) NOT NULL,

	CONSTRAINT PK_Choice PRIMARY KEY([ChoiceId]),

	CONSTRAINT FK_Choice_Question FOREIGN KEY([QuestionId]) REFERENCES [Question]([QuestionId])
)
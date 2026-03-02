-- create view that display the data of tables Question and Choice together

CREATE VIEW VW_QuestionWithChoices AS
SELECT
	Q.[QuestionId],
	Q.[QuestionType],
	Q.[QuestionBody],
	Q.[CorrectAnswer],
	C.[ChoiceId],
	C.[ChoiceText]
	FROM [dbo].[Question] Q
	JOIN [dbo].[Choice] C ON Q.QuestionId = C.QuestionId
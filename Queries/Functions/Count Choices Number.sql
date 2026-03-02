-- create function that return the number of choices

CREATE FUNCTION FN_GetChoiceCount(@QuestionId INT)
RETURNS INT
AS
BEGIN
	DECLARE @Count INT
	SELECT @Count = COUNT(*) FROM [dbo].[Choice] WHERE [QuestionId] = @QuestionId

	RETURN @Count
END


-- check statment
SELECT dbo.FN_GetChoiceCount(88) AS ChoiceCount;


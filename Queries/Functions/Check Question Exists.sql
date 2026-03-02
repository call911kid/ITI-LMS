-- create function that check if the Question entered exists or not

CREATE FUNCTION FN_CheckQuestionExists(@QuestionText NVARCHAR(300)) 
RETURNS BIT
AS
BEGIN
	DECLARE @Result BIT = 0
	IF EXISTS (SELECT 1 FROM [dbo].[Question] WHERE [QuestionBody] = @QuestionText)
	SET @Result = 1

	RETURN @Result
END


-- check section here:
SELECT dbo.FN_CheckQuestionExists
(
    'What is the difference between value types and reference types in C#?'
) 
AS IsQuestionExists;
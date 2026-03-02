-- create view that display the data of Question Table

CREATE VIEW VW_Questions AS
SELECT 
	Q.[QuestionId] , 
	Q.[QuestionType] , 
	Q.[QuestionBody] , 
	Q.[CorrectAnswer],
	C.CourseId
	FROM [dbo].[Question] Q
	JOIN [dbo].[Course] C ON Q.CourseId = C.CourseId
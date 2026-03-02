-- create view that display question with its choices

CREATE VIEW VW_QuestionWithChoices
AS
SELECT 
    Q.QuestionId,
    Q.QuestionBody,
    Q.QuestionType,
    Q.CorrectAnswer,
    C.ChoiceId,
    C.ChoiceText
FROM Question Q
LEFT JOIN Choice C ON Q.QuestionId = C.QuestionId;

CREATE FUNCTION FN_GetExamQuesions
(
    @InstructorId INT,
    @ExamId INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        eq.ExamQuestionId,
        q.QuestionId,
        q.QuestionType,
        q.QuestionBody,
        CASE 
            WHEN q.QuestionType = 'MCQ' THEN (SELECT STRING_AGG(ch.ChoiceText, ', ')
                                              FROM Choice ch
                                              WHERE ch.QuestionId = q.QuestionId)
            ELSE NULL
        END AS MCQOptions,
        q.CorrectAnswer,
        eq.Marks
    FROM ExamQuestion eq
    JOIN Exam e ON eq.ExamId = e.ExamId
    JOIN Class cl ON e.CourseId = cl.CourseId
    JOIN Question q ON eq.QuestionId = q.QuestionId
    WHERE e.ExamId = @ExamId
      AND cl.InstructorId = @InstructorId
);

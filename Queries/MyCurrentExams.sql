CREATE FUNCTION dbo.FN_MyCurrentExams()
RETURNS TABLE
AS
RETURN
(
    SELECT 
        c.CourseName,
        e.ExamType,
        e.Intake,
        e.Branch,
        e.Track,
        e.StartTime,
        e.EndTime
    FROM Exams e
    INNER JOIN Courses c ON e.CourseId = c.CourseId
    INNER JOIN StudentExams se ON se.ExamId = e.ExamId
    WHERE se.StudentId = dbo.GetCurrentUserID()
      AND GETDATE() BETWEEN e.StartTime AND e.EndTime
);

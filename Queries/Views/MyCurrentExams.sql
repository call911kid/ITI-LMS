CREATE VIEW VW_MyCurrentExams AS
SELECT 
    e.ExamId,
    e.CourseId,
    c.CourseName,
    e.ExamType,
    e.Intake,
    e.Branch,
    e.Track,
    e.StartTime,
    e.EndTime
FROM Exams e
JOIN Courses c ON e.CourseId = c.CourseId
JOIN StudentExams se ON se.ExamId = e.ExamId
WHERE se.StudentId = dbo.GetCurrentUserID()
  AND GETDATE() BETWEEN e.StartTime AND e.EndTime;

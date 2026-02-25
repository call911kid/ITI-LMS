CREATE FUNCTION dbo.FN_MyCurrentExams()
RETURNS TABLE
AS
RETURN
(
    SELECT 
        s.StudentName,
        c.CourseName,
        e.ExamType,
        b.BranchName,
        t.TrackName,
        e.StartTime,
        e.EndTime
    FROM StudentExam se
    INNER JOIN Student s       ON se.StudentId = s.StudentId
    INNER JOIN Exam e          ON se.ExamId = e.ExamId
    INNER JOIN Course c        ON e.CourseId = c.CourseId
    INNER JOIN IntakeTrack it  ON e.IntakeTrackId = it.IntakeTrackId
    INNER JOIN Branch b        ON it.BranchId = b.BranchId
    INNER JOIN Track t         ON it.TrackId = t.TrackId
    WHERE se.StudentId = dbo.GetCurrentUserID()
      AND GETDATE() BETWEEN e.StartTime AND e.EndTime
);

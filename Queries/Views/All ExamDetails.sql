CREATE VIEW VW_ExamDetails AS
SELECT
    e.ExamId,
    e.ExamType,
    e.StartTime,
    e.EndTime,
    co.CourseName,
    i.InstructorName,
    it.IntakeTrackId,
    it.IntakeId,
    it.TrackId,
    b.BranchName
FROM Exam e
JOIN Course co ON e.CourseId = co.CourseId
JOIN IntakeTrack it ON e.IntakeTrackId = it.IntakeTrackId
JOIN Class cl ON cl.CourseId = co.CourseId AND cl.IntakeTrackId = it.IntakeTrackId
JOIN Instructor i ON cl.InstructorId = i.InstructorId
JOIN Branch b ON it.BranchId = b.BranchId;

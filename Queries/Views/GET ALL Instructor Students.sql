CREATE VIEW VW_InstructorStudents
AS
SELECT
    i.InstructorId,
    i.InstructorName,
    c.ClassId,
    co.CourseId,
    co.CourseName,
    s.StudentId,
    s.StudentName,
    s.IntakeTrackId,
    it.IntakeId,
    it.TrackId,
    b.BranchId,
    b.BranchName
FROM Instructor i
INNER JOIN Class c ON c.InstructorId = i.InstructorId
INNER JOIN Course co ON co.CourseId = c.CourseId
INNER JOIN Student s ON s.IntakeTrackId = c.IntakeTrackId
INNER JOIN IntakeTrack it ON it.IntakeTrackId = s.IntakeTrackId
INNER JOIN Branch b ON b.BranchId = it.BranchId;

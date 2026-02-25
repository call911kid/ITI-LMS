CREATE VIEW VW_InstructorCourses AS
SELECT 
    i.InstructorId,
    i.InstructorName,
    c.ClassId,
    co.CourseId,
    co.CourseName,
    it.IntakeTrackId,
    it.IntakeId,
    it.TrackId,
    b.BranchName
FROM Instructor i
JOIN Class c ON i.InstructorId = c.InstructorId
JOIN Course co ON c.CourseId = co.CourseId
JOIN IntakeTrack it ON c.IntakeTrackId = it.IntakeTrackId
JOIN Branch b ON it.BranchId = b.BranchId;

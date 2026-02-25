CREATE PROCEDURE usp_GetInstructorStudents
    @InstructorId INT
AS
BEGIN
    SELECT
        s.StudentId,
        s.StudentName,
        co.CourseId,
        co.CourseName,
        c.ClassId,
        it.IntakeId,
        it.TrackId,
        b.BranchId,
        b.BranchName
    FROM Class c
    INNER JOIN Course co ON co.CourseId = c.CourseId
    INNER JOIN Student s ON s.IntakeTrackId = c.IntakeTrackId
    INNER JOIN IntakeTrack it ON it.IntakeTrackId = s.IntakeTrackId
    INNER JOIN Branch b ON b.BranchId = it.BranchId
    WHERE c.InstructorId = @InstructorId;
END;

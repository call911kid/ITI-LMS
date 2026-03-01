CREATE PROCEDURE USP_AddStudent
    @StudentName NVARCHAR(100),
    @UserId INT,
    @IntakeTrackId INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM [User] WHERE [UserId] = @UserId)
    BEGIN
        RAISERROR('UserId does not exist.', 16, 1);
        RETURN;
    END

    DECLARE @RoleCheck NVARCHAR(50);  
    SELECT @RoleCheck = [Role] FROM [dbo].[User] WHERE [UserId] = @UserId;

    IF @RoleCheck != 'StudentRole' 
    BEGIN
        RAISERROR('This UserId is not a student.', 16, 1);
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM [Student] WHERE [UserId] = @UserId)
    BEGIN
        RAISERROR('This UserId is already assigned to a student.', 16, 1);
        RETURN;
    END

    IF @IntakeTrackId IS NOT NULL AND NOT EXISTS (SELECT 1 FROM [IntakeTrack] WHERE [IntakeTrackId] = @IntakeTrackId)
    BEGIN
        RAISERROR('IntakeTrackId does not exist.', 16, 1);
        RETURN;
    END

    INSERT INTO [Student] ([StudentName], [UserId], [IntakeTrackId])
    VALUES (@StudentName, @UserId, @IntakeTrackId);

    SELECT SCOPE_IDENTITY() AS NewStudentId;
END;



EXEC USP_AddStudent @StudentName = 'sara', @UserId = 2;





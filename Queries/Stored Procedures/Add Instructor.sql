CREATE PROCEDURE USP_AddInstructor
    @InstructorName NVARCHAR(50),
    @UserId INT
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

    IF @RoleCheck != 'InstructorRole'  
    BEGIN
        RAISERROR('This UserId is not an instructor.', 16, 1);
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM [Instructor] WHERE [UserId] = @UserId)
    BEGIN
        RAISERROR('This UserId is already assigned to an instructor.', 16, 1);
        RETURN;
    END

    INSERT INTO [Instructor] ([InstructorName], [UserId])
    VALUES (@InstructorName, @UserId);

    SELECT SCOPE_IDENTITY() AS NewInstructorId;
END;



EXEC USP_AddInstructor @InstructorName = 'Ahmed', @UserId = 1;
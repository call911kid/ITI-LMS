CREATE PROCEDURE [dbo].[USP_AddInstructor]
    @InstructorName NVARCHAR(50),
    @Username       NVARCHAR(50),
    @PlainPassword  NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY

        EXEC [dbo].[USP_AddUserAccount]
            @Username      = @Username,
            @PlainPassword = @PlainPassword,
            @Role          = 'InstructorRole';

        DECLARE @UserId INT;
        SELECT @UserId = [UserId] FROM [dbo].[User] WHERE [Username] = @Username;

        INSERT INTO [dbo].[Instructor] ([InstructorName], [UserId])
        VALUES (@InstructorName, @UserId);

        SELECT SCOPE_IDENTITY() AS NewInstructorId;
        PRINT '[OK] Instructor registered: ' + @InstructorName + ' | Username: ' + @Username;

    END TRY
    BEGIN CATCH
        RAISERROR('Failed to create account for this instructor.', 16, 1);
    END CATCH
END;

------------------------------------------------------

EXEC [dbo].[USP_AddInstructor]
    @InstructorName = 'Ahmed Ali',
    @Username       = 'Ahmed_Inst',
    @PlainPassword  = 'Instructor@123';

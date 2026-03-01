CREATE PROCEDURE [dbo].[USP_AddStudent]
    @StudentName   NVARCHAR(100),
    @Username      NVARCHAR(50),
    @PlainPassword NVARCHAR(255),
    @IntakeTrackId INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY

        IF @IntakeTrackId IS NOT NULL
           AND NOT EXISTS (SELECT 1 FROM [dbo].[IntakeTrack] WHERE [IntakeTrackId] = @IntakeTrackId)
        BEGIN
            RAISERROR('IntakeTrackId does not exist.', 16, 1);
            RETURN;
        END

        EXEC [dbo].[USP_AddUserAccount]
            @Username      = @Username,
            @PlainPassword = @PlainPassword,
            @Role          = 'StudentRole';

        DECLARE @UserId INT;
        SELECT @UserId = [UserId] FROM [dbo].[User] WHERE [Username] = @Username;

        INSERT INTO [dbo].[Student] ([StudentName], [UserId], [IntakeTrackId])
        VALUES (@StudentName, @UserId, @IntakeTrackId);

        SELECT SCOPE_IDENTITY() AS NewStudentId;
        PRINT '[OK] Student registered: ' + @StudentName + ' | Username: ' + @Username;

    END TRY
    BEGIN CATCH
        RAISERROR('Failed to create account for this student.', 16, 1);
    END CATCH
END;



------------------------------------------
EXEC [dbo].[USP_AddStudent]
    @StudentName   = 'Sara Mohamed',
    @Username      = 'Sara_Student',
    @PlainPassword = 'Student@456',
    @IntakeTrackId = 1;

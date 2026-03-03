



CREATE PROCEDURE [dbo].[USP_AddUserAccount]
    @Username      NVARCHAR(50),
    @PlainPassword NVARCHAR(255),
    @Role          NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    IF @Role NOT IN ('InstructorRole', 'StudentRole', 'TrainingManagerRole', 'AdminRole')
    BEGIN
        RAISERROR('Invalid Role. Must be InstructorRole, StudentRole, TrainingManagerRole, or AdminRole.', 16, 1);
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM [dbo].[User] WHERE [Username] = @Username)
    BEGIN
        RAISERROR('Username already exists in the User table.', 16, 1);
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM sys.server_principals WHERE name = @Username)
    BEGIN
        RAISERROR('A SQL Server Login with this name already exists.', 16, 1);
        RETURN;
    END

    OPEN SYMMETRIC KEY MySymKey DECRYPTION BY CERTIFICATE MyCert;

    INSERT INTO [dbo].[User] ([Username], [Password], [Role])
    VALUES (
        @Username,
        EncryptByKey(Key_GUID('MySymKey'), CONVERT(VARBINARY(MAX), @PlainPassword)),
        @Role
    );

    CLOSE SYMMETRIC KEY MySymKey;

    DECLARE @SQL NVARCHAR(500);

    SET @SQL = 'CREATE LOGIN [' + @Username + '] WITH PASSWORD = '''
             + @PlainPassword + ''';';
    EXEC sp_executesql @SQL;

    SET @SQL = 'CREATE USER [' + @Username + '] FOR LOGIN [' + @Username + '];';
    EXEC sp_executesql @SQL;

    SET @SQL = 'ALTER ROLE [' + @Role + '] ADD MEMBER [' + @Username + '];';
    EXEC sp_executesql @SQL;

    PRINT '[OK] Account created: ' + @Username + ' | Role: ' + @Role;
END;
GO

-------------------------------------
CREATE ROLE InstructorRole;
CREATE ROLE StudentRole;
CREATE ROLE TrainingManagerRole;
-------------------------------------



 EXEC [dbo].[USP_AddUserAccount]
      @Username      = 'Ahmed_Inst',
      @PlainPassword = 'Instructor@123',
      @Role          = 'InstructorRole';



 EXEC [dbo].[USP_AddUserAccount]
      @Username      = 'Sara_Student',
      @PlainPassword = 'Student@456',
      @Role          = 'StudentRole';


 EXEC [dbo].[USP_AddUserAccount]
      @Username      = 'Mohamed_TM',
      @PlainPassword = 'Manager@789',
      @Role          = 'TrainingManagerRole';

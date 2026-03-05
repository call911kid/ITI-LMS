CREATE PROCEDURE [dbo].[USP_ManagePermissions]
    @Action      NVARCHAR(10),      -- 'GRANT', 'DENY', or 'REVOKE'
    @Permission  NVARCHAR(50),      -- 'SELECT', 'INSERT', 'UPDATE', 'DELETE', 'EXECUTE'
    @ObjectName  NVARCHAR(100),     -- Table / View / Procedure
    @Username    NVARCHAR(50) = NULL,  
    @RoleName    NVARCHAR(50) = NULL   
AS
BEGIN
    SET NOCOUNT ON;

    IF @Action NOT IN ('GRANT', 'DENY', 'REVOKE')
    BEGIN
        RAISERROR('Action must be GRANT, DENY, or REVOKE.', 16, 1);
        RETURN;
    END


    IF @Permission NOT IN ('SELECT', 'INSERT', 'UPDATE', 'DELETE', 'EXECUTE')
    BEGIN
        RAISERROR('Permission must be SELECT, INSERT, UPDATE, DELETE, or EXECUTE.', 16, 1);
        RETURN;
    END


    IF (@Username IS NULL AND @RoleName IS NULL)
    BEGIN
        RAISERROR('You must provide either @Username or @RoleName.', 16, 1);
        RETURN;
    END

    IF (@Username IS NOT NULL AND @RoleName IS NOT NULL)
    BEGIN
        RAISERROR('Provide either @Username or @RoleName, not both.', 16, 1);
        RETURN;
    END


    DECLARE @Principal NVARCHAR(50);

    IF @Username IS NOT NULL
    BEGIN

        IF NOT EXISTS (
            SELECT 1 FROM sys.database_principals
            WHERE name = @Username
              AND type IN ('S', 'U', 'G')   -- SQL User / Windows User / Windows Group
        )
        BEGIN
            RAISERROR('Database user not found.', 16, 1);
            RETURN;
        END
        SET @Principal = @Username;
    END
    ELSE
    BEGIN

        IF NOT EXISTS (
            SELECT 1 FROM sys.database_principals
            WHERE name = @RoleName
              AND type = 'R'                 -- R = Database Role
        )
        BEGIN
            RAISERROR('Database role not found.', 16, 1);
            RETURN;
        END
        SET @Principal = @RoleName;
    END


    IF NOT EXISTS (
        SELECT 1 FROM sys.objects
        WHERE name = @ObjectName
          AND SCHEMA_NAME(schema_id) = 'dbo'
    )
    BEGIN
        RAISERROR('Object not found in dbo schema.', 16, 1);
        RETURN;
    END


    DECLARE @SQL NVARCHAR(500);

    IF @Action IN ('GRANT', 'DENY')
        SET @SQL = @Action + ' ' + @Permission
                 + ' ON [dbo].[' + @ObjectName + '] TO [' + @Principal + '];';
    ELSE
        SET @SQL = 'REVOKE ' + @Permission
                 + ' ON [dbo].[' + @ObjectName + '] FROM [' + @Principal + '];';

    EXEC sp_executesql @SQL;

    PRINT '[OK] ' + @Action + ' ' + @Permission
        + ' on [dbo].[' + @ObjectName + '] to/from [' + @Principal + '] applied successfully.';

END;
GO

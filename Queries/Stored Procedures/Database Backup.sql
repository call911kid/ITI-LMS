CREATE PROCEDURE [dbo].[USP_BackupDatabase]
    @BackupType  NVARCHAR(10)  = 'FULL',         
    @BackupPath  NVARCHAR(255) = 'C:\Backups\'    
AS
BEGIN
    SET NOCOUNT ON;

    IF @BackupType NOT IN ('FULL', 'DIFF')
    BEGIN
        RAISERROR('BackupType must be FULL or DIFF.', 16, 1);
        RETURN;
    END

    DECLARE @DBName   NVARCHAR(100) = DB_NAME();
    DECLARE @DT       NVARCHAR(50)  = CONVERT(NVARCHAR(8),  GETDATE(), 112)  
                                    + '_'
                                    + REPLACE(CONVERT(NVARCHAR(8), GETDATE(), 108), ':', ''); 
    DECLARE @FileName NVARCHAR(500) = @BackupPath + @DBName + '_' + @BackupType + '_' + @DT + '.bak';
    DECLARE @SQL      NVARCHAR(1000);

    IF @BackupType = 'FULL'
    BEGIN
        SET @SQL = 'BACKUP DATABASE [' + @DBName + ']
                    TO DISK = ''' + @FileName + '''
                    WITH FORMAT, INIT,
                         NAME        = ''' + @DBName + ' - Full Backup'',
                         COMPRESSION,
                         STATS       = 10;';
    END
    ELSE 
    BEGIN
        SET @SQL = 'BACKUP DATABASE [' + @DBName + ']
                    TO DISK = ''' + @FileName + '''
                    WITH DIFFERENTIAL,
                         NAME        = ''' + @DBName + ' - Differential Backup'',
                         COMPRESSION,
                         STATS       = 10;';
    END

    EXEC sp_executesql @SQL;

    INSERT INTO [dbo].[BackupLog] ([BackupType], [FileName], [BackupDate])
    VALUES (@BackupType, @FileName, GETDATE());

    PRINT '[OK] Backup completed: ' + @FileName;
END;
GO

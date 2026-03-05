
CREATE PROCEDURE [dbo].[USP_InitializeEncryption]
    @MasterKeyPassword NVARCHAR(128) = 'StrongMasterKey@2024!'
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (
        SELECT 1 FROM sys.symmetric_keys
        WHERE name = '##MS_DatabaseMasterKey##'
    )
    BEGIN
        DECLARE @mkSQL NVARCHAR(500);
        SET @mkSQL = 'CREATE MASTER KEY ENCRYPTION BY PASSWORD = '''
                   + @MasterKeyPassword + ''';';
        EXEC sp_executesql @mkSQL;
        PRINT '[OK] Master Key created.';
    END
    ELSE
        PRINT '[SKIP] Master Key already exists.';

    IF NOT EXISTS (
        SELECT 1 FROM sys.certificates
        WHERE name = 'MyCert'
    )
    BEGIN
        CREATE CERTIFICATE MyCert
        WITH SUBJECT = 'Encryption Certificate for ExaminationSystem';
        PRINT '[OK] Certificate MyCert created.';
    END
    ELSE
        PRINT '[SKIP] Certificate MyCert already exists.';

    IF NOT EXISTS (
        SELECT 1 FROM sys.symmetric_keys
        WHERE name = 'MySymKey'
    )
    BEGIN
        CREATE SYMMETRIC KEY MySymKey
        WITH ALGORITHM = AES_128
        ENCRYPTION BY CERTIFICATE MyCert;
        PRINT '[OK] Symmetric Key MySymKey (AES_128) created.';
    END
    ELSE
        PRINT '[SKIP] Symmetric Key MySymKey already exists.';

    PRINT '──────────────────────────────────────────';
    PRINT 'Encryption setup completed successfully.';
    PRINT 'You can now use usp_CreateUserAccount.';
END;
GO

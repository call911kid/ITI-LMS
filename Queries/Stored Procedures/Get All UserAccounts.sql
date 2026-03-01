

CREATE PROCEDURE [dbo].[USP_ViewUserAccounts]
    @Username NVARCHAR(50) = NULL    
AS
BEGIN
    SET NOCOUNT ON;

    IF @Username IS NOT NULL
       AND NOT EXISTS (SELECT 1 FROM [dbo].[User] WHERE [Username] = @Username)
    BEGIN
        RAISERROR('Username not found.', 16, 1);
        RETURN;
    END

    OPEN SYMMETRIC KEY MySymKey DECRYPTION BY CERTIFICATE MyCert;

    SELECT
        [UserId],
        [Username],
        CONVERT(NVARCHAR(255),
            DecryptByKey([Password])
        )                       AS [PlainPassword],
        [Role],
        [CreatedAt]
    FROM [dbo].[User]
    WHERE (@Username IS NULL OR [Username] = @Username)
    ORDER BY [UserId];

    CLOSE SYMMETRIC KEY MySymKey;
END;
GO














EXEC [dbo].[USP_ViewUserAccounts];

EXEC [dbo].[USP_ViewUserAccounts]
      @Username = 'Ahmed_Inst';
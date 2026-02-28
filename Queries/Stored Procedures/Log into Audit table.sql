CREATE PROCEDURE [dbo].[USP_LogIntoAudit]
AS
BEGIN
    INSERT INTO [dbo].[Audit] (
        [Number], 
        [Severity], 
        [State], 
        [Procedure], 
        [Line], 
        [Message]
    )
    VALUES (
        ERROR_NUMBER(),
        ERROR_SEVERITY(),
        ERROR_STATE(),
        ERROR_PROCEDURE(),
        ERROR_LINE(),
        ERROR_MESSAGE()
    );
END
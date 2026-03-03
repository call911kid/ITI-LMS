CREATE PROCEDURE USP_UpdateIntake
    @IntakeId INT,
    @IntakeNewName NVARCHAR(100),
    @IntakeNewYear INT
AS
BEGIN
    BEGIN TRY
        IF @IntakeNewYear < YEAR(GETDATE())
        BEGIN
            RAISERROR('Intake year cannot be in the past',16,1);
            RETURN;
        END

        UPDATE Intake
        SET IntakeName = @IntakeNewName,
            IntakeYear = @IntakeNewYear
        WHERE IntakeId = @IntakeId;
    END TRY
    BEGIN CATCH
        EXEC dbo.USP_LogIntoAudit;
        THROW;
    END CATCH
END
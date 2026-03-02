-- Creating Proceudres Add New Intake

CREATE PROCEDURE USP_AddNewIntake
	@IntakeNewName NVARCHAR(100),
	@IntakeNewYear INT 
AS
BEGIN
	IF @IntakeNewYear < YEAR(GETDATE())
		BEGIN
			PRINT 'Error: Intake year cannot be in the past'
			RETURN;
		END
	ELSE
		BEGIN
			INSERT INTO [dbo].[Intake] (IntakeName , IntakeYear)
			VALUES (@IntakeNewName , @IntakeNewYear)
			PRINT 'Intake Added Successfully'
			RETURN
		END
END
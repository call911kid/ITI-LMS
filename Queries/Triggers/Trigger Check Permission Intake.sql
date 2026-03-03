-- create trigger that prevent the CRUD operation with anyone has't permission to apply them
CREATE TRIGGER TR_CheckPermission_Intake
ON Intake
INSTEAD OF INSERT, UPDATE, DELETE
AS
BEGIN
	-- checking section of who has permission
    DECLARE @UserId INT;

    SET @UserId = CAST(SESSION_CONTEXT(N'UserId') AS INT);

    IF NOT EXISTS (
        SELECT 1
        FROM [User]
        WHERE UserId = @UserId AND Role IN ('AdminRole', 'InstructorRole')
    )
    BEGIN
        RAISERROR('Access Denied: Only Admin or Instructor can modify Branch',16,1);
        ROLLBACK;
        RETURN;
    END

	-- if have permission then apply the CRUD operations

    -- INSERT
    IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted)
    BEGIN
        INSERT INTO Intake (IntakeName, IntakeYear)
        SELECT IntakeName, IntakeYear FROM inserted;
    END

    -- DELETE
    IF EXISTS (SELECT * FROM deleted) AND NOT EXISTS (SELECT * FROM inserted)
    BEGIN
        DELETE FROM Intake
        WHERE IntakeId IN (SELECT IntakeId FROM deleted);
    END

    -- UPDATE
    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
    BEGIN
        UPDATE Intake
        SET IntakeName = i.IntakeName,
            IntakeYear = i.IntakeYear
        FROM Intake b
        JOIN inserted i ON b.IntakeId = i.IntakeId;
    END
END
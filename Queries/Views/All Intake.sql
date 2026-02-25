--Creating View All Intake

CREATE VIEW VW_IntakeFullInfo AS
SELECT
[IntakeId],
[IntakeName],
[IntakeYear]
FROM [dbo].[Intake]
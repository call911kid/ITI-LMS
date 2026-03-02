--Creating View All Branch


CREATE VIEW VW_BranchFullInfo AS
SELECT
[BranchId],
[BranchName],
[BranchAddress]
FROM [dbo].[Branch]
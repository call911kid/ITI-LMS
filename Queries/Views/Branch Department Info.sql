-- Creating View BranchDepartment

CREATE VIEW VW_BranchDepartmentInfo AS
SELECT
B.[BranchId],
B.[BranchName],
B.[BranchAddress]
FROM [dbo].[Branch] B
LEFT JOIN [dbo].[Department] D
ON B.BranchId = D.BranchId

-- We Will Add BranchID(FK) not now
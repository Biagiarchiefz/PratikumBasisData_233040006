SELECT e.Name, d.DepartmentName
FROM dbo.Employee AS e, [dbo].[Departments] AS d
WHERE e.DepartmentsID = d.DepartmentsID;
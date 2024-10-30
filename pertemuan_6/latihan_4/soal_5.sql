SELECT e.Name, p.ProjectName
FROM [dbo].[Employee] AS e
CROSS JOIN [dbo].[Projects] AS p
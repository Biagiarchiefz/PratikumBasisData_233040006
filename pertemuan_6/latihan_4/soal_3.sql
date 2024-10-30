SELECT Projects.ProjectName, Departments.DepartmentName
FROM Projects
LEFT JOIN Departments ON Projects.DepartmentsID = Departments.DepartmentsID;
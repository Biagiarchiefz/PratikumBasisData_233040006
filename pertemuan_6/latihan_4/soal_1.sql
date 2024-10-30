SELECT Employee.Name, Departments.DepartmentName
FROM Employee
JOIN Departments ON Employee.DepartmentsID = Departments.DepartmentsID;
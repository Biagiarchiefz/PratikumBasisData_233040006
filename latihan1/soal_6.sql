SELECT 
    E.empid, 
    E.firstname, 
    E.lastname
FROM 
    HR.Employees E
LEFT JOIN 
    Sales.Orders O ON E.empid = O.empid 
                    AND O.orderdate >= '2016-05-01'
WHERE 
    O.orderid IS NULL;
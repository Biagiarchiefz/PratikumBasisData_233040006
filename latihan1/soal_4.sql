SELECT 
    C.custid, 
    C.companyname, 
    O.orderid, 
    O.orderdate
FROM 
    Sales.Customers C
LEFT JOIN 
    Sales.Orders O ON C.custid = O.custid
	
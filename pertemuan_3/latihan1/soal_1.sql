SELECT 
    C.custid, 
    COUNT(O.orderid) AS numorders,
    SUM(OD.qty) AS totalqty
FROM 
    Sales.Customers C
JOIN 
    Sales.Orders O ON C.custid = O.custid
JOIN 
    Sales.OrderDetails OD ON O.orderid = OD.orderid
WHERE 
    C.country = 'USA'
GROUP BY 
    C.custid
ORDER BY 
    C.custid;
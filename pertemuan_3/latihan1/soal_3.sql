/* SELECT Customers.custid, Customers.companyname, Orders.orderid, Orders.orderdate 
FROM Sales.Customers AS C   
INNER JOIN Sales.Orders AS O     
ON Customers.custid = Orders.custid; 
*/


/* kesalahan pada query diatas adalah terdapat pada penggunaan Customers dan Orders karna sebelumnya kita sudah menetapkan aliasnya, jadi pada saat SELECT JOIN tidak 
perlu lagi menggunakan nama tabel aslinya*/

/* ALTERNATIF QUERY */

SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C   
INNER JOIN Sales.Orders AS O     
ON C.custid = O.custid;


/*
MySQL:
In this exercise, you will practice using joins.

Create a report that shows the order ids and the associated employee names for orders that shipped after the required date. 
	It should return the following. There should be 37 rows returned. Ex:
    FirstName    LastName     OrderID
1)    Steven      Buchanan     10320
2)    Laura       Callahan     10380  
3)    Laura       Callahan     10545
4)    Laura       Callahan     10596
5)    Laura       Callahan     10660
6)    Nancy       Davolio      10709
7)    Nancy       Davolio      10827
8)    Anne        Dodsworth    10828
9)    Anne        Dodsworth    10687
10)   Anne        Dodsworth    10705
11)   Anne        Dodsworth    10970
12)   Andrew      Fuller       10663
13)   Andrew      Fuller       10727
14)   Andrew      Fuller       10515
15)   Andrew      Fuller       10280
16)   Robert      King         10523
17)   Robert      King         10483
18)   Robert      King         10593
19)   Robert      King         10777
20)   Janet       Leverling    10779
21)   Janet       Leverling    10924
22)   Janet       Leverling    10433

Create a report that shows the total quantity of products (from the Order_Details table) ordered. Only show records for products 
	for which the quantity ordered is fewer than 200. The report should return the following 5 rows.
    ProductName                  TotalUnits
1)  Chocolade                       138 
2)  Genen Shouyu                    122
3)  Gravad lax                      125
4)  Laughing Lumberjack Lager       184
5)  Mishi Kobe Niku                 95

Create a report that shows the total number of orders by Customer since December 31, 1996. The report should only return rows for 
	which the NumOrders is greater than 15. The report should return the following 5 rows.
    CompanyName            NumOrders
1)  Save-a-lot Markets        28
2)  Ernst Handel              24
3)  QUICK-Stop                22
4)  Folk och fä HB            16
5)  HILARION-Abastos          16

Create a report that shows the company name, order id, and total price of all products of which Northwind has sold more than $10,000 worth. 
	There is no need for a GROUP BY clause in this report.
    CompanyName                   OrderID       TotalPrice
1)  Hanari Carnes                  10981         15810.0
2)  QUICK-Stop                     10865         15019.5
3)  Rattlesnake Canyon Grocery     10889         10540.0
4)  Simons bistro                  10417         10540.0

*/

SELECT 
    Employees.FirstName, Employees.LastName, Orders.OrderID
FROM
    Northwind.Employees
        JOIN
    Northwind.Orders ON (Employees.EmployeeID = Orders.EmployeeID)
WHERE
    ShippedDate > RequiredDate
ORDER BY LastName , FirstName;

SELECT 
    ProductName, SUM(Quantity) AS TotalUnits
FROM
    Northwind.Order_Details
        JOIN
    Northwind.Products ON (Order_Details.ProductID = Products.ProductID)
GROUP BY ProductName
HAVING SUM(Quantity) < 200;

SELECT 
    CompanyName, COUNT(OrderID) AS NumOrders
FROM
    Northwind.Customers
        JOIN
    Northwind.Orders ON (Customers.CustomerID = Orders.CustomerID)
WHERE
    OrderDate > '1996-12-31'
GROUP BY CompanyName
HAVING COUNT(OrderID) > 15
ORDER BY NumOrders DESC;

SELECT 
    c.CompanyName,
    o.OrderID,
    od.UnitPrice * od.Quantity * (1 - od.Discount) AS TotalPrice
FROM
    Northwind.Order_Details od
        JOIN
    Northwind.Orders o ON (o.OrderID = od.OrderID)
        JOIN
    Northwind.Customers c ON (c.CustomerID = o.CustomerID)
WHERE
    od.UnitPrice * od.Quantity * (1 - od.Discount) > 10000
ORDER BY TotalPrice DESC;
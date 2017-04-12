/*
MySQL:
In this exercise, you will practice working with aggregate functions. For all of these questions, 
it's okay if your result set's rows are in a different order.

    Create a report that returns the following from the Order_Details table. Aggregate Order Details ResultsThe report 
		should only return rows for which TotalUnits is less than 200.
        ProductID    TotalUnits
	1)      15           122
    2)      37           125
    3)      67           184
    4)      48           138
    5)      9            95
        
    Create a report that returns the following from the Products table. Aggregate Orders Results The report should only 
		return rows for which the average unit price of a product is greater than 70.
        ProductID     AveragePrice
    1)      20          81.0000
    2)      9           97.0000
    3)      29          123.7900
    4)      38          263.5000
        
    Create a report that returns the following from the Orders table. Aggregate Products NumOrders represents the number 
		of orders placed by a certain customer. Only return rows where NumOrders is greater than 15.
		CustomerID    NumOrders
	1)     SAVEA        31
    2)     ERNSH        30
    3)     QUICK        28
    4)     FOLKO        19
    5)     HUNGO        19
    6)     BERGS        18
    7)     RATTC        18
    8)     HILAA        18
    9)     BONAP        17

Query number 2 above has something strange about it. It is, in fact, a ridiculous query. Why? Try to get the exact same 
results without using an aggregate function.
*/

SELECT 
    ProductID, SUM(Quantity) AS TotalUnits
FROM
    Northwind.Order_Details
GROUP BY ProductID
HAVING SUM(Quantity) < 200;

SELECT 
    ProductID, AVG(UnitPrice) AS AveragePrice
FROM
    Northwind.Products
GROUP BY ProductID
HAVING AVG(UnitPrice) > 70
ORDER BY AveragePrice;

SELECT 
    CustomerID, COUNT(OrderID) AS NumOrders
FROM
    Northwind.Orders
GROUP BY CustomerID
HAVING COUNT(OrderID) > 15
ORDER BY NumOrders DESC;

SELECT 
    ProductID, UnitPrice AS AveragePrice
FROM
    Northwind.Products
WHERE
    UnitPrice > 70
ORDER BY UnitPrice;
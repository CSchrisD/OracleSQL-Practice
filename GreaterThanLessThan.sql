/*
MySQL:
In this exercise, you will practice using the WHERE clause to check for values greater than or less than a specified value.

    Create a report that shows the employee id, order id, customer id, required date, and shipped date of all orders that were shipped later than they were required.
    Create a report that shows the city, company name, and contact name of all customers who are in cities that begin with "A" or "B."
    Create a report that shows all orders that have a freight cost of more than $500.00.
    Create a report that shows the product name, units in stock, units on order, and reorder level of all products that are up for reorder.
*/

SELECT 
    EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate
FROM
    Northwind.Orders
WHERE
    ShippedDate > RequiredDate;

SELECT 
    City, CompanyName, ContactName
FROM
    Northwind.Customers
WHERE
    City < 'C';

SELECT 
    OrderID, OrderDate, Freight
FROM
    Northwind.Orders
WHERE
    Freight > 500.00;

SELECT 
    ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel
FROM
    Northwind.Products
WHERE
    ReorderLevel >= UnitsInStock;
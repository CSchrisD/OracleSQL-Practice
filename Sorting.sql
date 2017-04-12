/*
MySQL:
In this exercise, you will practice sorting results in SELECT statements.

    Select CategoryName and Description from the Categories table sorted by CategoryName.
    Select ContactName, CompanyName, ContactTitle, and Phone from the Customers table sorted by Phone.
    Create a report showing employees' first and last names and hire dates sorted from newest to oldest employee.
    Create a report showing Northwind's orders sorted by Freight from most expensive to cheapest. Show OrderID, OrderDate, ShippedDate, CustomerID, and Freight.
    Select CompanyName, Fax, Phone, HomePage and Country from the Suppliers table sorted by Country in descending order and then by CompanyName in ascending order.
    Create a list of employees showing title, first name, and last name. Sort by Title in ascending order and then by LastName in descending order.
*/

SELECT 
    CategoryName, Description
FROM
    Northwind.Categories
ORDER BY CategoryName;

SELECT 
    ContactName, CompanyName, ContactTitle, Phone
FROM
    Northwind.Customers
ORDER BY Phone;

SELECT 
    FirstName, LastName, HireDate
FROM
    Northwind.Employees
ORDER BY HireDate DESC;

SELECT 
    OrderID, OrderDate, ShippedDate, CustomerID, Freight
FROM
    Northwind.Orders
ORDER BY Freight DESC;

SELECT 
    CompanyName, Fax, Phone, HomePage, Country
FROM
    Northwind.Suppliers
ORDER BY Country DESC , CompanyName;

SELECT 
    Title, FirstName, LastName
FROM
    Northwind.Employees
ORDER BY Title , LastName DESC;
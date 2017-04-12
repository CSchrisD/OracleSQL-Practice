/*
MySQL:
In this exercise, you will practice selecting specific columns from tables in the Northwind database.

    Select CategoryName and Description from the Categories table.
    Select ContactName, CompanyName, ContactTitle and Phone from the Customers table.
    Select EmployeeID, Title, FirstName, LastName, and Region from the Employees table.
    Select RegionID and RegionDescription from the Region table.
    Select CompanyName, Fax, Phone and HomePage from the Suppliers table.
*/

SELECT 
    CategoryName, Description
FROM
    Northwind.Categories;

SELECT 
    ContactName, CompanyName, ContactTitle, Phone
FROM
    Northwind.Customers;

SELECT 
    EmployeeID, Title, FirstName, LastName, Region
FROM
    Northwind.Employees;

SELECT 
    RegionID, RegionDescription
FROM
    Northwind.Region;

SELECT 
    CompanyName, Fax, Phone, HomePage
FROM
    Northwind.Suppliers;
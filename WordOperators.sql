/*
MySQL:
In this exercise, you will practice writing SELECT statements that use WHERE with word operators.

    Create a report that shows the first and last names and birth date of all employees born in the 1950s.
    Create a report that shows the product name and supplier id for all products supplied by Exotic Liquids, 
		Grandma Kelly's Homestead, and Tokyo Traders. Hint: you will need to first do a separate SELECT on the Suppliers table to find the 
		supplier ids of these three companies.
    Create a report that shows the shipping postal code, order id, and order date for all orders with a ship postal code beginning with "02389".
    Create a report that shows the contact name and title and the company name for all customers whose contact title does not contain the word "Sales".
*/

SELECT 
    FirstName, LastName, BirthDate
FROM
    Northwind.Employees
WHERE
    BirthDate BETWEEN '1950-01-01' AND '1950-12-31';

SELECT 
    SupplierID, CompanyName
FROM
    Northwind.Suppliers
WHERE
    CompanyName = 'Exotic Liquids'
        OR CompanyName = 'Grandma Kelly\'s Homestead'
        OR CompanyName = 'Tokyo Traders';

SELECT 
    ProductName, SupplierID
FROM
    Northwind.Products
WHERE
    SupplierID IN (1 , 3, 4);

SELECT 
    ShipPostalCode, OrderID, OrderDate
FROM
    Northwind.Orders
WHERE
    ShipPostalCode LIKE '02389%';

SELECT 
    ContactName, ContactTitle, CompanyName
FROM
    Northwind.Customers
WHERE
    NOT ContactTitle LIKE '%Sales%';
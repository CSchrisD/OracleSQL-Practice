/*
MySQL:
In this exercise, you will practice using UNION.

    Create a report showing the contact name and phone numbers for all employees, customers, and suppliers.
*/

SELECT 
    CONCAT(FirstName, ' ', LastName) AS Contact,
    HomePhone AS Phone
FROM
    Northwind.Employees 
UNION SELECT 
    ContactName, Phone
FROM
    Northwind.Customers 
UNION SELECT 
    ContactName, Phone
FROM
    Northwind.Suppliers
ORDER BY Contact;

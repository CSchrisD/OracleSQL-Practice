/*
MySQL:
In this exercise, you will practice selecting records with fields that have NULL values.

    Create a report that shows the company name, contact name and fax number of all customers that have a fax number.
    Create a report that shows the first and last name of all employees who do not report to anybody.
*/

SELECT 
    CompanyName, ContactName, Fax
FROM
    Northwind.Customers
WHERE
    Fax IS NOT NULL;

SELECT 
    FirstName, LastName
FROM
    Northwind.Employees
WHERE
    ReportsTo IS NULL;

/*
MySQL:
In this exercise, you will practice writing SELECT statements that filter records based on multiple conditions.

    Create a report that shows the first and last names and cities of employees from cities other than Seattle in the state of Washington.
    Create a report that shows the company name, contact title, city and country of all customers in Mexico or in any city in Spain except Madrid.
*/

SELECT 
    FirstName, LastName, City
FROM
    Northwind.Employees
WHERE
    City <> 'Seattle' AND Region = 'WA';

SELECT 
    CompanyName, ContactTitle, City, Country
FROM
    Northwind.Customers
WHERE
    Country = 'Mexico'
        OR (Country = 'Spain'
        AND NOT City <> 'Madrid');
/*
MySQL:
In this exercise, you will practice writing SELECT statements that use both WHERE and ORDER BY.

    Create a report that shows the company name, contact name and fax number of 
		all customers that have a fax number. Sort by company name.
    Create a report that shows the city, company name, and contact name of all customers who are 
		in cities that begin with "A" or "B." Sort by contact name in descending order.
*/

SELECT 
    CompanyName, ContactName, Fax
FROM
    Northwind.Customers
WHERE
    Fax IS NOT NULL
ORDER BY CompanyName;

SELECT 
    City, CompanyName, ContactName
FROM
    Northwind.Customers
WHERE
    City > 'C'
ORDER BY ContactName DESC;
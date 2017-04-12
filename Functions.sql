/*
MySQL:
In this exercise, you will practice using data manipulation functions.

    Create a report that shows the units in stock, unit price, the total price value of all units in stock, 
		the total price value of all units in stock rounded down, and the total price value of all units in stock rounded up. 
		Sort by the total price value descending.
        
    SQL SERVER AND MYSQL USERS ONLY: In an earlier demo, you saw a report that returned the age of each employee when hired. 
		That report was not entirely accurate as it didn't account for the month and day the employee was born. Fix that report, 
		showing both the original (inaccurate) hire age and the actual hire age. The result will look like this.
        HireAgeAccurate   HireAgeInaccurate 
	1)    43.424657           44
    2)    40.512328           40
    3)    28.608219           29
    4)    55.657534           56
    5)    38.649315           38
    6)    30.315068           30
    7)    33.619178           34
    8)    36.175342           36
    9)    28.819178           28
    
    Create a report that shows the first and last names and birth month (as a string) for each employee born in the current month.
    
    Create a report that shows the contact title in all lowercase letters of each customer contact.

*/

SELECT 
    UnitsInStock,
    UnitPrice,
    (UnitsInStock * UnitPrice) AS TotalPrice,
    FLOOR(UnitsInStock * UnitPrice) AS RoundDown,
    CEILING(UnitsInStock * UnitPrice) AS RoundUp
FROM
    Northwind.Products
ORDER BY TotalPrice DESC;

SELECT 
    (TO_DAYS(HireDate) - TO_DAYS(BirthDate)) / 365.25 AS HireAgeAccurate,
    (YEAR(HireDate) - YEAR(BirthDate)) AS HireAgeInaccurate
FROM
    Northwind.Employees;

SELECT 
    FirstName,
    LastName,
    DATE_FORMAT(BirthDate, '%M') AS BirthMonth
FROM
    Northwind.Employees
WHERE
    EXTRACT(MONTH FROM BirthDate) = EXTRACT(MONTH FROM NOW());

SELECT 
    LOWER(ContactTitle) AS Title
FROM
    Northwind.Customers;
/*
MySQL:
In this exercise, you will practice writing SELECT statements with calculated fields.

    Create a report that shows the unit price, quantity, discount, and the calculated total price using these three fields.
        Note for SQL Server users only: You will be using the Order Details table. Because this table name has a space in it, 
        you will need to put it in double quotes in the FROM clause (e.g, FROM "Order Details").
    Write a SELECT statement that outputs the following.
		ContactInfo
	1)	Nancy Davolio can be reached at x5467
    2)  Andrew Fuller can be reached at x3457
    3)  Janet Leverling can be reached at x3355
    4)  Margaret Peacock can be reached at x5176
    5)  Steven Buchanan can be reached at x3453
    6)  Michael Suyama can be reached at x428
    7)  Robert King can be reached at x465
    8)  Laura Callahan can be reached at x2344
    9)  Anne Dodsworth can be reached at x452
*/

SELECT 
    UnitPrice,
    Quantity,
    Discount,
    (UnitPrice * Quantity) * (1 - UnitPrice) AS TotalPrice
FROM
    Northwind.Order_Details;

SELECT 
    CONCAT(FirstName,
            ' ',
            LastName,
            ' ',
            'can be reached at x',
            Extension) AS ContactInfo
FROM
    Northwind.Employees;
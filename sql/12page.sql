#12page.sql
USE w3schools;

INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT CustomerName, ContactName, Address, City, PostalCode, Country
FROM Customers;

SELECT COUNT(*)
FROM Customers;

INSERT INTO Employees
    (LastName, FirstName, BirthDate, Photo, Notes)
SELECT LastName, FirstName, BirthDate, Photo, Notes
FROM Employees;

SELECT COUNT(*)
FROM Employees;

SELECT EmployeeID
FROM Employees
LIMIT 368;

DELETE
FROM Employees
WHERE EmployeeID > 580;


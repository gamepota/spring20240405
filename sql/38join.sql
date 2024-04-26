#38join.sql

USE mydb2;


CREATE TABLE table7
(
    col1 INT,
    col2 VARCHAR(3)
);

CREATE TABLE table8
(
    cola INT,
    colb VARCHAR(3)
);

CREATE TABLE table9
(
    col3 INT,
    colc INT,
    info VARCHAR(3)
);
INSERT INTO table7
VALUES (1, 'abc'),
       (2, 'def');
INSERT INTO table8
VALUES (1, 'ghi'),
       (2, 'jkl'),
       (3, 'mno');
INSERT INTO table9
VALUES (1, 2, 'pqr'),
       (1, 3, 'stu'),
       (2, 1, 'vwx'),
       (2, 2, 'yza');

SELECT *
FROM table7;
SELECT *
FROM table8;
SELECT *
FROM table9;

SELECT *
FROM table7 t7
         JOIN table9 t9
              ON t7.col1 = t9.colc
         Join table8 t8
              ON t8.cola = t9.colc;

USE w3schools;

SELECT o.OrderID,
       o.OrderDate,
       c.CustomerID,
       CustomerName,
       e.EmployeeID,
       e.FirstName,
       e.LastName,
       s.ShipperID,
       s.ShipperName
FROM Orders o
         JOIN Customers c ON o.CustomerID = c.CustomerID
         JOIN Employees e ON o.EmployeeID = e.EmployeeID
         JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate BETWEEN '1996-07-01' AND '1996-07-31'
ORDER BY o.OrderDate, c.CustomerID, e.EmployeeID, s.ShipperID;


SELECT DISTINCT p.ProductName
FROM OrderDetails o1
         JOIN Orders o2 ON o1.OrderID = o2.OrderID
         JOIN Products p ON o1.ProductID = p.ProductID
WHERE o2.OrderDate = '1996-07-08'
ORDER BY p.ProductName;

# Fløtemysost 상품을 구매한 고객의 이름과 주소, 주문일 조회
# Customers, Orders, OrderDetails, Products

SELECT DISTINCT p.ProductName, c.CustomerName, c.Address, o.OrderDate, c.CustomerID, p.ProductID
FROM Orders o
         JOIN OrderDetails od ON o.OrderID = od.OrderID
         JOIN Products p ON od.ProductID = p.ProductID
         JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE p.ProductName = 'Fløtemysost'
ORDER BY p.ProductName, c.CustomerName, c.Address, o.OrderDate;





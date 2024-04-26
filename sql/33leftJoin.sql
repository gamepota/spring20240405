#33leftJoin.sql

USE mydb2;
SELECT *
FROM table1;
SELECT *
FROM table2;

SELECT *
FROM table1
         LEFT JOIN table2 ON col_a = col_b;

DELETE
FROM table1;
DELETE
FROM table2;

INSERT INTO table1
VALUES (1),
       (2),
       (2),
       (3),
       (4);
INSERT INTO table2
VALUES (3),
       (4),
       (5),
       (5);

SELECT *
FROM table1
         LEFT JOIN table2 ON col_a = col_b;

SELECT *
FROM table2
         LEFT JOIN table1 ON col_a = col_b;

DELETE
FROM table3;
DELETE
FROM table4;

INSERT INTO table3
VALUES (4),
       (5),
       (6),
       (3);
INSERT INTO table4
VALUES (5),
       (6),
       (7),
       (7),
       (8);
# 카테시안 곱 =>20개
SELECT *
FROM table3
         JOIN table4;
SELECT *
FROM table3
         JOIN table4 ON col_a = col_b;

SELECT *
FROM table3
         LEFT JOIN table4 ON col_a = col_b;

SELECT *
FROM table4
         LEFT JOIN table3 ON col_a = col_b;



SELECT *
FROM table2
         RIGHT JOIN table1 ON col_a = col_b;
SELECT *
FROM table1
         RIGHT JOIN table2 ON col_a = col_b;
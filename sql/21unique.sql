#21unique.sql

USE w3schools;

# UNIQUE : 다른 레코드의 컬럼 값이 중복되지 않음
CREATE TABLE my_table15
(
    col1 VARCHAR(3),
    col2 VARCHAR(3) UNIQUE
);
INSERT INTO my_table15
    (col1, col2)
VALUES ('abc', 'def');
INSERT INTO my_table15
    (col1, col2)
VALUES ('qwe', 'qwe');
INSERT INTO my_table15
    (col1, col2)
VALUES ('abc', 'abc');
INSERT INTO my_table15
    (col1, col2)
VALUES ('def', 'def');
INSERT INTO my_table15
    (col1)
VALUES ('qwe');
INSERT INTO my_table15
    (col1)
VALUES ('asd');
SELECT *
FROM my_table15;
DESC my_table15;

# my_table16
#  제약사항없이
#  UNIQUE
#  NOT NULL UNIQUE
CREATE TABLE my_table16
(
    name VARCHAR(10) UNIQUE,
    age  int,
    some VARCHAR(10) NOT NULL UNIQUE
);

SELECT *
FROM my_table16;
INSERT INTO my_table16
    (name, age, some)
VALUES ('a', 11, 'b');
INSERT INTO my_table16
    (name, age, some)
VALUES ('c', 12, 'c');
INSERT INTO my_table16
    (name, age, some)
VALUES ('d', 12, 'b');
# INSERT INTO my_table16
#     (name)
# VALUES ('f');



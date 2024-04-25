#28thirdNormalForm.sql

# Third Normal Form (3NF, 제3정규화)
# 1) 2NF이다.
# 2) 키가 아닌 컬럼끼리 종속되면 안된다.
USE mydb1;
DROP TABLE customer;
DROP TABLE customer_benefit;
CREATE TABLE customer
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(3),
    last_name  VARCHAR(3),
    level      INT,
    FOREIGN KEY (level) REFERENCES customer_benefit (level)

);
CREATE TABLE customer_benefit
(
    level   INT PRIMARY KEY,
    benefit VARCHAR(100)
);
INSERT INTO customer
    (first_name, last_name, level)
VALUES ('son', 'hm', 1),
       ('lee', 'ki', 1),
       ('kim', 'ss', 2),
       ('jj', 'kk', 2),
       ('tt', 'dd', 3);
INSERT INTO customer_benefit
    (level, benefit)
VALUES (1, '무료배송'),
       (2, '할인'),
       (3, '라운지');
SELECT *
FROM customer;

SELECT *
FROM customer_benefit;
# 25database.sql

# 사용할 데이ㅓ베이스(스키마) 선택하기
USE w3schools;

SHOW tables;

CREATE DATABASE mydb1;
USE mydb1;
SHOW tables;
CREATE TABLE my_table1
(
    name VARCHAR(3),
    age  INT
);

CREATE DATABASE mydb2;
USE mydb2;
CREATE TABLE my_table2
(
    name VARCHAR(10),
    age  INT,
    city VARCHAR(20)
);
SHOW TABLES;

SELECT *
FROM my_table2;

# SELECT *
# # FROM mydb1.my_table1;

#데이터 베이스 삭제 (매우 주의)
DROP DATABASE mydb2;

DROP DATABASE mydb1;
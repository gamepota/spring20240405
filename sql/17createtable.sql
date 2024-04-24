#17createTable.sql

USE w3schools;

# CREATE TABLE: 새테이블 만들기
# 테이블 생성시 컬럼들 정의 해야함
# CREATE TABLE (
#     #컬럼명1 컬럼 타입,
#     #컬럼명2 커럼 타입
# );

#테이블명, 컬럼명: (upper,lower) snake case
#UPPER_SNAKE_CASE
#lower_snake_case
#관습임.

CREATE TABLE my_table1
(
    address varchar(30),
    city    varchar(50),
    country varchar(20)
);

INSERT INTO my_table1
    (address, city, country)
    VALUE ('신촌', '서울', '한국');

SELECT *
FROM my_table1;

DESCRIBE my_table1;

CREATE TABLE my_table2
(
    name varchar(30),
    age  varchar(30)
);

INSERT INTO my_table2
    (name, age)
    VALUE ('응우옌', 44);

SELECT *
FROM my_table2;

DESCRIBE my_table2;


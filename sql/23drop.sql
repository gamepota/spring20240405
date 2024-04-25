#23drop,sql

USE w3schools;
CREATE TABLE table99
(
    col1 INT
);
# DROP TABLE: 테이블 삭제
# 매우 주의해서 실행 해야하는 쿼리!!!!!!!!!
DROP TABLE table99;
SELECT *
FROM table99;

CREATE TABLE table100
(
    col1 VARCHAR(100)
);
INSERT INTO table100
    (col1)
    VALUE ('gghdsgdd');
SELECT *
FROM table100;
DROP TABLE table100;

SELECT *
FROM table100;


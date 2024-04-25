#19constraints.sql
USE w3schools;
# 제약사항
# 특정 컬럼에 제약사항을 줌(예: 곡 값이 있어야 함, 기본값, 중복불가)

#NOT NULL: 꼭 값이 있어야 함
CREATE TABLE my_table11
(
    col1 VARCHAR(10),
    col2 VARCHAR(10) NOT NULL
);
DESC my_table11;

INSERT INTO my_table11
    (col1, col2)
VALUES ('col1', 'col2');
INSERT INTO my_table11
    (col2)
VALUES ('value');
# INSERT INTO my_table11
#     (col1)
# VALUES ('value');

SELECT *
FROM my_table11;

SELECT *
FROM my_table11
WHERE col2 = 'value';
SELECT *
FROM my_table11
WHERE col1 = 'value';
# 해당 컬럼에 값이 없는 레코드 조회
SELECT *
FROM my_table11
WHERE col1 IS NULL;


CREATE TABLE my_table12
(
    tb1 VARCHAR(10) NOT NULL,
    tb2 VARCHAR(10) NOT NULL
);

INSERT INTO my_table12
    (tb1, tb2)
VALUES ('aa', 'bb');
# INSERT INTO my_table12
#     (tb1)
#     VALUE ('aaa');


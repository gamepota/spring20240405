#20default.sql

USE w3schools;

# DEFAULT : 값을 주지 않을 때의 기본값을 정의
CREATE TABLE my_table13
(
    col1 VARCHAR(10),
    col2 VARCHAR(10) DEFAULT 'abc'
);
INSERT INTO my_table13
    (col1, col2)
VALUES ('qwe', 'zxc');
INSERT INTO my_table13
    (col2)
VALUES ('iop');
INSERT INTO my_table13
    (col1)
VALUES ('bnm');

INSERT INTO my_table13
    (col1, col2)
VALUES ('jkl', NULL);
SELECT *
FROM my_table13;
DESC my_table13;

# my_table14 테이블 만들기
#  4개의 컬럼 정의
#   하나는 제약사항없이
#   하나는 NOT NULL 만
#   하나는 DEFAULT 만
#   하나는 NOT NULL DEFAULT

CREATE TABLE my_table14
(
    name   VARCHAR(10),
    age    INT         NOT NULL,
    gender VARCHAR(10)          DEFAULT 'none',
    job    VARCHAR(10) NOT NULL DEFAULT 'student'

);
SELECT *
FROM my_table14;
INSERT INTO my_table14
    (name, age, gender, job)
VALUES ('kim', 12, 'male', 'gg');
INSERT INTO my_table14
    (age, job)
VALUES (22, 'sa');
INSERT INTO my_table14
    (name, age, gender)
VALUES ('him', 33, 'female');
SELECT *
FROM my_table14;


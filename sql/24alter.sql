#24alter.sql

USE w3schools;

# ALTER TABLE : 테이블 구조 변경

# 컬럼 추가
CREATE TABLE my_table23
(
    name VARCHAR(3),
    age  INT
);
INSERT INTO my_table23 (name, age)
VALUES ('son', 44),
       ('lee', 33);
ALTER TABLE my_table23
    ADD COLUMN address VARCHAR(10);
SELECT *
FROM my_table23;

# todo; my_table23 에 city 컬럼 추가
ALTER TABLE my_table23
    ADD COLUMN city VARCHAR(10);

ALTER TABLE my_table23
    ADD COLUMN country VARCHAR(10) NOT NULL;

ALTER TABLE my_table23
    ADD COLUMN price INT NOT NULL;

ALTER TABLE my_table23
    ADD COLUMN state VARCHAR(10) NOT NULL UNIQUE;

ALTER TABLE my_table23
    ADD COLUMN state VARCHAR(10) NOT NULL DEFAULT 'seoul';

ALTER TABLE my_table23
    ADD COLUMN birth DATE AFTER age;
DESC my_table23;


# 컬럼 삭제 (주의!!)

ALTER TABLE my_table23
    DROP COLUMN state;
ALTER TABLE my_table23
    DROP COLUMN city;

DESC my_table23;

# 컬럼 변경
#   이름변경,
ALTER TABLE my_table23
    RENAME COLUMN address TO town;
DESC my_table23;

ALTER TABLE my_table23
    RENAME COLUMN birth TO birth_date;
DESC my_table23;
#   자료형
ALTER TABLE my_table23
    MODIFY COLUMN price DECIMAL(20, 2);
DESC my_table23;

ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(30);
DESC my_table23;
# 제약사항변경

DESC my_table23;

ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) UNIQUE;

ALTER TABLE my_table23
    MODIFY COLUMN age INT UNIQUE;
DESC my_table23;

#UNIQUE 제약사항 삭제하기
SHOW index FROM my_table23;

# ALTER TABLE my_table23
#     DROP INDEX age;
# DESC my_table23;
#
# SHOW index FROM my_table23;
# ALTER TABLE my_table23
#     DROP INDEX name;
DESC my_table23;

#NOT NULL 추가
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) NOT NULL;
#NOT NULL 삭제
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) NULL;

ALTER TABLE my_table23
    MODIFY COLUMN age INT NOT NULL;
DESC my_table23;
ALTER TABLE my_table23
    MODIFY COLUMN age INT NULL;
DESC my_table23;

ALTER TABLE my_table23
    MODIFY COLUMN age INT DEFAULT 0;
DESC my_table23;
ALTER TABLE my_table23
    ALTER COLUMN age DROP DEFAULT;
DESC my_table23;

# PRIMARY KEY 제약 사항 추가 / 삭제
ALTER TABLE my_table23
    ADD PRIMARY KEY (name);
DESC my_table23;
ALTER TABLE my_table23
    DROP PRIMARY KEY;
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) NULL;

# age 컬럼에 PRIMARY KEY 제약 사항 추가 / 삭제
ALTER TABLE my_table23
    ADD PRIMARY KEY (age);
DESC my_table23;
ALTER TABLE my_table23
    DROP PRIMARY KEY;
DESC my_table23;
ALTER TABLE my_table23
    MODIFY COLUMN age INT NULL;
DESC my_table23;



#18.type.sql

#문자열
#VARCHAR(길이)
CREATE TABLE my_table3
(
    name  VARCHAR(3),
    title VARCHAR(5),
    note  VARCHAR(1000)
);
DESC my_table3;
INSERT INTO my_table3
    (name, title, note)
    VALUE ('구구구', '선수', '파리');
INSERT INTO my_table3
    (name, title, note)
    VALUE ('김독수', 'ㅎㅎ', 'ㅇㅇㅇㅇㅇ');

CREATE TABLE my_table4
(
    name    VARCHAR(300),
    content VARCHAR(5000),
    author  varchar(30)
);

DESC my_table4;

INSERT INTO my_table4
    (name, content, author)
    VALUE ('머시깽저시깽하가지고 전생한 내가 사실 그냥 무능력자인것에 대하여~ 개백수 날로먹는 인생은 두번째에도 실패다아앗!!', '나를 개백수라 부르라', '김백수');

SELECT *
FROM my_table4;


#숫자열
# 정수 INT
# 실수 DECIMAL, DEC (총길이, 소수점이하길이)
CREATE TABLE my_table5
(
    age    INT,
    height DEC(5, 2)
);
DESC my_table5;
SELECT *
FROM my_table5;
INSERT INTO my_table5
    (age, height)
VALUES (10, 170.25);
INSERT INTO my_table5
    (age, height)
VALUES (10, 1000.25);
INSERT INTO my_table5
    (age, height)
VALUES (10, 170.333);
INSERT INTO my_table5
    (age, height)
VALUES (10, 170.339);


CREATE TABLE my_table6
(
    age    INT,
    weight DEC(3, 2)
);
DESC my_table6;


# 날짜시간
# DATE ; 날짜 (YYYY-MM-DD)
# DATETIME ; 날짜시간 (YYYY-MM-DD HH:MM:SS)

CREATE TABLE my_table7
(
    col1 DATE,
    col2 DATETIME
);
DESC my_table7;
SELECT *
FROM my_table7;
INSERT INTO my_table7
    (col1, col2)
VALUES ('2002-08-10', '1999-09-09 22:10:10');

# todo; my_table8 에 두 컬럼(DATE, DATETIME) 정의하고
#  레코드 넣고, 조회

CREATE TABLE my_table8
(
    col1 DATE,
    col2 DATETIME
);

DESC my_table8;

INSERT INTO my_table8
    (col1, col2)
VALUES ('2002-07-10', '1998-09-09 22:10:10');
SELECT *
FROM my_table8;

CREATE TABLE my_table9
(
    string_col    VARCHAR(30),
    int_col       INT,
    dec_col       DEC(10, 2),
    date_col      DATE,
    date_time_col DATETIME
);
INSERT INTO my_table9
    (string_col, int_col, dec_col, date_col, date_time_col)
    VALUE ('이게뭐야', 50000, 54321.98, '2024-02-02', '1888-01-19 19:20:30');
SELECT *
FROM my_table9;
CREATE TABLE my_table10
(
    title     VARCHAR(30),
    name      VARCHAR(30),
    age       INT,
    price     DEC(10, 3),
    published DATE,
    inserted  DATETIME
);
INSERT INTO my_table10
    (title, name, age, price, published, inserted)
VALUES ('이것이 자바다', '신용권', 40, 23422.223, '1999-09-09', '1999-10-10 12:33:12'),
       ('스프링부트', '홍길동', 50, 2342.123, '2024-01-01', '2024-02-02 09:33:33');

SELECT *
FROM my_table10;





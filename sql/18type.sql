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


#날짜시간
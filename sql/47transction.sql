#46transaction.sql

#TRANSACTION : 하나의 업무 단위

USE mydb2;
CREATE TABLE bank
(
    name  VARCHAR(3) PRIMARY KEY,
    money INT NOT NULL
);

INSERT INTO bank
VALUES ('흥민', 10000),
       ('강인', 10000);

SELECT *
FROM bank;


# 강인이 흥민에게 500원 송금
UPDATE bank
SET money = money - 500
WHERE name = '강인';
UPDATE bank
SET money = money + 500
WHERE name = '흥민';

# TRANSACTION 시작
START TRANSACTION;
#모두 성공
COMMIT;

#TRANSACTION 시작
START TRANSACTION;
# 모두 실패
ROLLBACK;




CREATE DATABASE atm_DB;

USE atm_DB;

CREATE TABLE member(
	num int,
    account varchar(20),
    id varchar(20),
    pw varchar(20),
    name varchar(20),
    money int,
    isLogin boolean
);

DESC member;

INSERT INTO member VALUES(1, '111-111', 'qwer', '1234', '김철수', 1000, false);
INSERT INTO member VALUES(2, '222-222', 'asdf', '2345', '이영희', 2000, false);

SELECT * FROM member;
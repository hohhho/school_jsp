CREATE DATABASE project;

USE project;

CREATE TABLE atm_member(
    account varchar(20) DEFAULT '--' ,
    id varchar(20) NOT NULL,
    pw varchar(20) NOT NULL,
    name varchar(20) NOT NULL,
    balance int DEFAULT 0
);

DESC atm_member;

SELECT * FROM atm_member;
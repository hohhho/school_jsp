create database jsp_easy_member;
USE jsp_easy_member;

CREATE TABLE member(
	memberId varchar(20),
	memberPw varchar(20),
	memberName varchar(20),
	memberGender varchar(10)
);

CREATE TABLE admin(
	adminId varchar(20),
	adminPw varchar(20)
);

INSERT INTO admin  VALUES('admin', 'admin' );

DESC member;


INSERT INTO member  VALUES('qwer', '1234' , '김철수' , '남' );
INSERT INTO member  VALUES('asdf', '1234' , '이영희' , '여' );
INSERT INTO member  VALUES('zxcv', '1234' , '조성민' , '남' );

SELECT * FROM member;
SELECT * FROM admin;

-- SELECT COUNT(*) FROM member WHERE memberId='qwer' and memberPw='1234';




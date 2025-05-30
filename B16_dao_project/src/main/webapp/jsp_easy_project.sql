CREATE DATABASE jsp_easy_project;


USE jsp_easy_project;


CREATE TABLE atm_user(
	atm_user_account varchar(20),
    atm_user_id varchar(20),
	atm_user_pw varchar(20),
	atm_user_name varchar(20),
    atm_user_balance int
);
DESC atm_user;


INSERT INTO atm_user  VALUES('111-111', 'qwer' , '1234' , '김철수' , 1000);
INSERT INTO atm_user  VALUES('222-222', 'asdf' , '2345' , '이영희' , 2000);

SELECT * FROM atm_user;



CREATE TABLE kiosk_menu(

	menu_number int,
    menu_name varchar(20),
	menu_price int,
	menu_count int
);


		
INSERT INTO kiosk_menu  VALUES(1001, '와퍼' , 4500 , 5 );
INSERT INTO kiosk_menu  VALUES(1002, '치즈와퍼' , 4800 , 4 );
INSERT INTO kiosk_menu  VALUES(1003, '치킨버거' , 5000 , 5 );
INSERT INTO kiosk_menu  VALUES(1004, '불고기버거' , 3500 , 3 );

-- DELETE FROM kiosk_menu WHERE menu_number = 0;

SELECT * FROM kiosk_menu;

-- SELECT count(*) FROM kiosk_menu WHERE menu_count >= 1 and menu_number = 1001;

CREATE TABLE kiosk_order(

	order_name  varchar(20),
	order_price  int,
	order_count int,
	order_total int
);


SELECT * FROM kiosk_order;

CREATE TABLE vote_title(
	vote_title varchar(100),
	vote_size int
);

CREATE TABLE vote_info(
	vote_number int,
    vote_info varchar(100), 
    vote_count int 
);
SELECT * FROM vote_title;

SELECT * FROM vote_info;














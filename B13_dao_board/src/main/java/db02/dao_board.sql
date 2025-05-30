CREATE DATABASE dao_board;

USE dao_board;

CREATE TABLE board_table(
	no int,
    writer varchar(20),
    subject varchar(20),
    contnet varchar(1000),
    readcount int DEFAULT 0
);

DESC board_table;
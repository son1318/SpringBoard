CREATE USER 'son1318'@'localhost' IDENTIFIED BY '1234';

CREATE DATABASE board;

GRANT ALL PRIVILEGES ON  board.* TO 'son1318'@'localhost';

SELECT * 
FROM mysql.user;

USE board;

DROP TABLE tbl_board;

CREATE TABLE tbl_board(
	bno		INT			NOT NULL AUTO_INCREMENT,
	title		VARCHAR(50)	NOT NULL,
	content	TEXT			NOT NULL,
	writer	VARCHAR(30)	NOT NULL,
	regDate	TIMESTAMP	DEFAULT NOW(),
	viewCnt	INT			DEFAULT 0,	
	PRIMARY KEY(bno)
);

COMMIT;

SELECT * FROM tbl_board;

DESC tbl_board;

insert into tbl_board(title, content, writer)
  values('테스트 제목1', '테스트 내용', '작성자');

insert into tbl_board(title, content, writer)
  values('테스트 제목2', '테스트 내용', '작성자');

insert into tbl_board(title, content, writer)
  values('테스트 제목3', '테스트 내용', '작성자');

insert into tbl_board(title, content, writer)
  values('테스트 제목4', '테스트 내용', '작성자');

insert into tbl_board(title, content, writer)
  values('테스트 제목5', '테스트 내용', '작성자');

commit;

select * from tbl_board;

DESC tbl_board;

select bno, title, content, writer, regDate, viewCnt
from tbl_board;

INSERT INTO tbl_board(title,content,writer)
VALUES('test title','test content','test writer');

commit;




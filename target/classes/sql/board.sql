create table board(
      board_no number primary key,
      id varchar2(20),
      write_date date,
      title varchar2(100),
      content varchar2(1000),
      category varchar2(30));

create sequence board_seq;

select * from board;

select write_date from board;
2018-08-16 15:30:58.0

select * from board where write_date='18/08/16'
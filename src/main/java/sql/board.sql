create table board(
      board_no number primary key,
      id varchar2(20),
      write_date date,
      title varchar2(100),
      content varchar2(1000),
      category varchar2(30));

create sequence board_seq;

select * from board;

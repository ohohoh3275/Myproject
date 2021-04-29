# Myproject
my first official spring project.
**branch 'master' is me.

sql-Oracle

create table myboard(
  bno number(10) primary key,
  title varchar2(100),
  content varchar2(2000),
  writer varchar2(100),
  bdate date default sysdate
  );
  
create sequence myboard_seq;

create table mymember(
  userid varcher2(40),
  userpass varchar2(100),
  username varchar2(40),
  regdate date default sysdate
  );
  
create table myreply(
  bno number,
  rno number,
  content varchar2(1000),
  writer varchar2(50),
  bdate date default sysdate
  );
create sequence myreply_seq;

create table myfile(
  gno number primary key,
  title varchar2(200),
  content varchar2(200),
  writer varchar2(100),
  bdate date default sysdate,
  filename varchar2(1000),
  uploadpath varchar2(1000)
  );
create sequence myfile_seq;




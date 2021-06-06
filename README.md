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
  userid varchar2(40),
  userpass varchar2(100),
  username varchar2(40),
  regdate date default sysdate
  );
  
create table myreply(  
  rno number(10),
  content varchar2(1000),
  writer varchar2(50),
  bdate date default sysdate
  );
create sequence myreply_seq;
 bno number(10) foreign key references myboard(bno),

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



---------------------------------
mysql
create schema myproject;

create table myboard( bno int(10) auto_increment primary key, title varchar(100), content varchar(2000), writer varchar(100), bdate date );


create table mymember( userid varchar(40), userpass varchar(100), username varchar(40), regdate datetime default current_timestamp );

create table myreply(
rno int(10) auto_increment primary key, content varchar(1000), writer varchar(50), bdate datetime default current_timestamp ); 


create table myfile( gno int auto_increment primary key primary key, title varchar(200), content varchar(200), writer varchar(100), bdate datetime default current_timestamp, filename varchar(1000), uploadpath varchar(1000) ); 


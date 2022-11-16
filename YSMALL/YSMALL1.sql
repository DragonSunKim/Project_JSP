create table member(
id varchar2(30) primary key,
password varchar2(30) not null,
name varchar2(30) not null,
address varchar2(100),
phone1 varchar2(4),
phone2 varchar2(4),
phone3 varchar2(4)
);
drop table member;
select * from member;
delete from member where id='kys';
commit;
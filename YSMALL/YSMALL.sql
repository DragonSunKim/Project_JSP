create table top(
topNumber varchar2(10) PRIMARY KEY,
topBrand varchar2(50),
topName varchar2(50),
topPrice Number
);

insert into top values('T0001', 'STANDARD', '스웨트 셔츠[블랙]', 29900);
insert into top values('T0002', 'VIVASTUDIO', 'RETRIEVER CREWNECK [NAVY]', 69000);
insert into top values('T0003', 'EBBETSFIELD', '베츠 어센틱 맨투맨 그레이', 69000);
insert into top values('T0004', 'YALE', '2 TONE ARCH HOODIE BLACK', 79000);
insert into top values('T0005', 'TAKEASY', '솔리드 옥스포드 오버셔츠', 40000);
insert into top values('T0006', 'TAKEASY', '램스울 크루넥 오버니트(연차콜)', 54000);

commit;

select * from top;



create table outer(
outerNumber varchar2(10) PRIMARY KEY,
outerBrand varchar2(50),
outerName varchar2(50),
outerPrice Number
);
select * from outer;

insert into outer values('O0001', 'COOR', 'MTR 발마칸 코트 (블랙)', 329000);
insert into outer values('O0002', 'LAFUDGESTORE', '오리지널 M-1965 피쉬테일 파카', 138000);
insert into outer values('O0003', 'LAFUDGESTORE', '버핑레더 오버핏 블루종_Black', 94000);
insert into outer values('O0004', 'YALE', 'QUILTING JACKET BLACK', 99000);
insert into outer values('O0005', 'YALE', 'QUILTING JACKET IVORY', 99000);
insert into outer values('O0006', 'STANDARD', '오버사이즈 블레이저 [블랙]', 83900);
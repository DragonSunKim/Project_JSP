create table top(
topNumber varchar2(10) PRIMARY KEY,
topBrand varchar2(50),
topName varchar2(50),
topPrice Number
);

insert into top values('T0001', 'STANDARD', '����Ʈ ����[��]', 29900);
insert into top values('T0002', 'VIVASTUDIO', 'RETRIEVER CREWNECK [NAVY]', 69000);
insert into top values('T0003', 'EBBETSFIELD', '���� �ƽ ������ �׷���', 69000);
insert into top values('T0004', 'YALE', '2 TONE ARCH HOODIE BLACK', 79000);
insert into top values('T0005', 'TAKEASY', '�ָ��� �������� ��������', 40000);
insert into top values('T0006', 'TAKEASY', '������ ũ��� ������Ʈ(������)', 54000);

commit;

select * from top;



create table outer(
outerNumber varchar2(10) PRIMARY KEY,
outerBrand varchar2(50),
outerName varchar2(50),
outerPrice Number
);
select * from outer;

insert into outer values('O0001', 'COOR', 'MTR �߸�ĭ ��Ʈ (��)', 329000);
insert into outer values('O0002', 'LAFUDGESTORE', '�������� M-1965 �ǽ����� ��ī', 138000);
insert into outer values('O0003', 'LAFUDGESTORE', '���η��� ������ �����_Black', 94000);
insert into outer values('O0004', 'YALE', 'QUILTING JACKET BLACK', 99000);
insert into outer values('O0005', 'YALE', 'QUILTING JACKET IVORY', 99000);
insert into outer values('O0006', 'STANDARD', '���������� ������ [��]', 83900);
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

delete from top where topNumber = 'T0005';
commit;

select * from top;
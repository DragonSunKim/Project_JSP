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


-- pants
create table pants(
pantsNumber varchar2(10) PRIMARY KEY,
pantsBrand varchar2(50),
pantsName varchar2(50),
pantsPrice Number
);

select * from pants;
insert into pants values('P0001', 'XERO', 'Deep One Tuck Sweat Pants [Grey]', 39000);
insert into pants values('P0002', 'WHOLOVESART', '���ϼ��� ���� ���̵� ��� ������', 54000);
insert into pants values('P0003', 'GAKKAI UNIONS', '���� ���̵� ����Ʈ���� ��', 52000);
insert into pants values('P0004', 'TOFFEE', '���̵� ���� ���� (LIGHT BLUE)', 49000);
insert into pants values('P0005', 'BRANDED', '1931 OBJECT JEANS [CROP STRAIGHT]', 78000);
insert into pants values('P0006', 'GLW', '���� ���̵� ���� ���� �׷���', 49800);

commit;

-- shoes
create table shoes(
shoesNumber varchar2(10) PRIMARY KEY,
shoesBrand varchar2(50),
shoesName varchar2(50),
shoesPrice Number
);

select * from shoes;

insert into shoes values('S0001', 'CUSTOMADE', '4.5cm �Ұ��� �ڸ��� ÿ�ú��� ��ƾ', 99000);
insert into shoes values('S0002', 'BSQT by Classy', '375 ���� ���� ���� ��ú�', 59000);
insert into shoes values('S0003', 'ROMANTIC MOVE', '��Ž�䷹ ÿ�� ���� R17M077 (��)', 198000);
insert into shoes values('S0004', 'DR.MARTENS', '3Ȧ ��� ��', 190000);
insert into shoes values('S0005', 'FIRENZE ATELIER', '���� ������ 5CM ������', 98000);
insert into shoes values('S0006', 'WETHEROAD', 'Ŭ���� �������� 4Ȧ ������ ��', 89000);


-- acc
create table acc(
accNumber varchar2(10) PRIMARY KEY,
accBrand varchar2(50),
accName varchar2(50),
accPrice Number
);

select * from acc;

insert into acc values('A0001', '247 SEOUL', '247 ĳ�ù̾� ���÷� [GREY]', 39900);
insert into acc values('A0002', 'DOFFJASON', '�̴ϸ� ������ �ϵ巹�� ��Ʈ', 43000);
insert into acc values('A0003', 'CPGN STUDIO', '�츮Ƽ�� üũ ���÷� í��', 38000);
insert into acc values('A0004', 'CPGN STUDIO', '�츮Ƽ�� üũ ���÷� ������', 38000);
insert into acc values('A0005', 'TIERUST ', '���� ��Ʈ������ ��Ʈ ��Ÿ��', 25000);
insert into acc values('A0006', 'STANDARD', '��ũ ������Ż Ÿ�� [���̺�]', 23900);

commit;

-- order
create table orderTable(
orderNumber number PRIMARY KEY,
productNumber varchar2(10) not null,
userId varchar2(30) not null,
orderOption varchar2(30) not null,
orderDate date,
constraint fk_pn foreign key(ProductNumber) references product(productNumber),
constraint fk_ui foreign key(userId) references member(id)
);
select * from orderTable;
delete from orderTable where orderNumber=2;
commit;
--
select * from acc;

insert into acc values('A0001', '247 SEOUL', '247 ĳ�ù̾� ���÷� [GREY]', 39900);
insert into acc values('A0002', 'DOFFJASON', '�̴ϸ� ������ �ϵ巹�� ��Ʈ', 43000);
insert into acc values('A0003', 'CPGN STUDIO', '�츮Ƽ�� üũ ���÷� í��', 38000);
insert into acc values('A0004', 'CPGN STUDIO', '�츮Ƽ�� üũ ���÷� ������', 38000);
insert into acc values('A0005', 'TIERUST ', '���� ��Ʈ������ ��Ʈ ��Ÿ��', 25000);
insert into acc values('A0006', 'STANDARD', '��ũ ������Ż Ÿ�� [���̺�]', 23900);

commit;

--drop
drop table top;
drop table outer;
drop table pants;
drop table shoes;
drop table acc;



-- product
create table product(
productNumber varchar2(10) PRIMARY KEY,
productBrand varchar2(50),
productName varchar2(50),
productPrice Number
);

select * from product;

insert into product values('T0001', 'STANDARD', '����Ʈ ����[��]', 29900);
insert into product values('T0002', 'VIVASTUDIO', 'RETRIEVER CREWNECK [NAVY]', 69000);
insert into product values('T0003', 'EBBETSFIELD', '���� �ƽ ������ �׷���', 69000);
insert into product values('T0004', 'YALE', '2 TONE ARCH HOODIE BLACK', 79000);
insert into product values('T0005', 'TAKEASY', '�ָ��� �������� ��������', 40000);
insert into product values('T0006', 'TAKEASY', '������ ũ��� ������Ʈ(������)', 54000);

insert into product values('O0001', 'COOR', 'MTR �߸�ĭ ��Ʈ (��)', 329000);
insert into product values('O0002', 'LAFUDGESTORE', '�������� M-1965 �ǽ����� ��ī', 138000);
insert into product values('O0003', 'LAFUDGESTORE', '���η��� ������ �����_Black', 94000);
insert into product values('O0004', 'YALE', 'QUILTING JACKET BLACK', 99000);
insert into product values('O0005', 'YALE', 'QUILTING JACKET IVORY', 99000);
insert into product values('O0006', 'STANDARD', '���������� ������ [��]', 83900);

insert into product values('P0001', 'XERO', 'Deep One Tuck Sweat Pants [Grey]', 39000);
insert into product values('P0002', 'WHOLOVESART', '���ϼ��� ���� ���̵� ��� ������', 54000);
insert into product values('P0003', 'GAKKAI UNIONS', '���� ���̵� ����Ʈ���� ��', 52000);
insert into product values('P0004', 'TOFFEE', '���̵� ���� ���� (LIGHT BLUE)', 49000);
insert into product values('P0005', 'BRANDED', '1931 OBJECT JEANS [CROP STRAIGHT]', 78000);
insert into product values('P0006', 'GLW', '���� ���̵� ���� ���� �׷���', 49800);

insert into product values('S0001', 'CUSTOMADE', '4.5cm �Ұ��� �ڸ��� ÿ�ú��� ��ƾ', 99000);
insert into product values('S0002', 'BSQT by Classy', '375 ���� ���� ���� ��ú�', 59000);
insert into product values('S0003', 'ROMANTIC MOVE', '��Ž�䷹ ÿ�� ���� R17M077 (��)', 198000);
insert into product values('S0004', 'DR.MARTENS', '3Ȧ ��� ��', 190000);
insert into product values('S0005', 'FIRENZE ATELIER', '���� ������ 5CM ������', 98000);
insert into product values('S0006', 'WETHEROAD', 'Ŭ���� �������� 4Ȧ ������ ��', 89000);

insert into product values('A0001', '247 SEOUL', '247 ĳ�ù̾� ���÷� [GREY]', 39900);
insert into product values('A0002', 'DOFFJASON', '�̴ϸ� ������ �ϵ巹�� ��Ʈ', 43000);
insert into product values('A0003', 'CPGN STUDIO', '�츮Ƽ�� üũ ���÷� í��', 38000);
insert into product values('A0004', 'CPGN STUDIO', '�츮Ƽ�� üũ ���÷� ������', 38000);
insert into product values('A0005', 'TIERUST ', '���� ��Ʈ������ ��Ʈ ��Ÿ��', 25000);
insert into product values('A0006', 'STANDARD', '��ũ ������Ż Ÿ�� [���̺�]', 23900);
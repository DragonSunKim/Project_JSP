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


-- pants
create table pants(
pantsNumber varchar2(10) PRIMARY KEY,
pantsBrand varchar2(50),
pantsName varchar2(50),
pantsPrice Number
);

select * from pants;
insert into pants values('P0001', 'XERO', 'Deep One Tuck Sweat Pants [Grey]', 39000);
insert into pants values('P0002', 'WHOLOVESART', '유니섹스 세미 와이드 밴딩 슬랙스', 54000);
insert into pants values('P0003', 'GAKKAI UNIONS', '원턱 와이드 스웨트팬츠 블랙', 52000);
insert into pants values('P0004', 'TOFFEE', '와이드 데님 팬츠 (LIGHT BLUE)', 49000);
insert into pants values('P0005', 'BRANDED', '1931 OBJECT JEANS [CROP STRAIGHT]', 78000);
insert into pants values('P0006', 'GLW', '이지 와이드 데님 팬츠 그레이', 49800);

commit;

-- shoes
create table shoes(
shoesNumber varchar2(10) PRIMARY KEY,
shoesBrand varchar2(50),
shoesName varchar2(50),
shoesPrice Number
);

select * from shoes;

insert into shoes values('S0001', 'CUSTOMADE', '4.5cm 소가죽 코만도 첼시부츠 루틴', 99000);
insert into shoes values('S0002', 'BSQT by Classy', '375 웰던 더비 구두 루시블랙', 59000);
insert into shoes values('S0003', 'ROMANTIC MOVE', '뉴탐페레 첼시 부츠 R17M077 (블랙)', 198000);
insert into shoes values('S0004', 'DR.MARTENS', '3홀 모노 블랙', 190000);
insert into shoes values('S0005', 'FIRENZE ATELIER', '볼륨 라운드토 5CM 더비슈즈', 98000);
insert into shoes values('S0006', 'WETHEROAD', '클리프 스퀘어토 4홀 더비슈즈 블랙', 89000);


-- acc
create table acc(
accNumber varchar2(10) PRIMARY KEY,
accBrand varchar2(50),
accName varchar2(50),
accPrice Number
);

select * from acc;

insert into acc values('A0001', '247 SEOUL', '247 캐시미어 머플러 [GREY]', 39900);
insert into acc values('A0002', 'DOFFJASON', '미니멀 스퀘어 하드레더 벨트', 43000);
insert into acc values('A0003', 'CPGN STUDIO', '헤리티지 체크 머플러 챠콜', 38000);
insert into acc values('A0004', 'CPGN STUDIO', '헤리티지 체크 머플러 베이지', 38000);
insert into acc values('A0005', 'TIERUST ', '슬림 스트라이프 니트 넥타이', 25000);
insert into acc values('A0006', 'STANDARD', '실크 레지멘탈 타이 [네이비]', 23900);

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

insert into acc values('A0001', '247 SEOUL', '247 캐시미어 머플러 [GREY]', 39900);
insert into acc values('A0002', 'DOFFJASON', '미니멀 스퀘어 하드레더 벨트', 43000);
insert into acc values('A0003', 'CPGN STUDIO', '헤리티지 체크 머플러 챠콜', 38000);
insert into acc values('A0004', 'CPGN STUDIO', '헤리티지 체크 머플러 베이지', 38000);
insert into acc values('A0005', 'TIERUST ', '슬림 스트라이프 니트 넥타이', 25000);
insert into acc values('A0006', 'STANDARD', '실크 레지멘탈 타이 [네이비]', 23900);

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

insert into product values('T0001', 'STANDARD', '스웨트 셔츠[블랙]', 29900);
insert into product values('T0002', 'VIVASTUDIO', 'RETRIEVER CREWNECK [NAVY]', 69000);
insert into product values('T0003', 'EBBETSFIELD', '베츠 어센틱 맨투맨 그레이', 69000);
insert into product values('T0004', 'YALE', '2 TONE ARCH HOODIE BLACK', 79000);
insert into product values('T0005', 'TAKEASY', '솔리드 옥스포드 오버셔츠', 40000);
insert into product values('T0006', 'TAKEASY', '램스울 크루넥 오버니트(연차콜)', 54000);

insert into product values('O0001', 'COOR', 'MTR 발마칸 코트 (블랙)', 329000);
insert into product values('O0002', 'LAFUDGESTORE', '오리지널 M-1965 피쉬테일 파카', 138000);
insert into product values('O0003', 'LAFUDGESTORE', '버핑레더 오버핏 블루종_Black', 94000);
insert into product values('O0004', 'YALE', 'QUILTING JACKET BLACK', 99000);
insert into product values('O0005', 'YALE', 'QUILTING JACKET IVORY', 99000);
insert into product values('O0006', 'STANDARD', '오버사이즈 블레이저 [블랙]', 83900);

insert into product values('P0001', 'XERO', 'Deep One Tuck Sweat Pants [Grey]', 39000);
insert into product values('P0002', 'WHOLOVESART', '유니섹스 세미 와이드 밴딩 슬랙스', 54000);
insert into product values('P0003', 'GAKKAI UNIONS', '원턱 와이드 스웨트팬츠 블랙', 52000);
insert into product values('P0004', 'TOFFEE', '와이드 데님 팬츠 (LIGHT BLUE)', 49000);
insert into product values('P0005', 'BRANDED', '1931 OBJECT JEANS [CROP STRAIGHT]', 78000);
insert into product values('P0006', 'GLW', '이지 와이드 데님 팬츠 그레이', 49800);

insert into product values('S0001', 'CUSTOMADE', '4.5cm 소가죽 코만도 첼시부츠 루틴', 99000);
insert into product values('S0002', 'BSQT by Classy', '375 웰던 더비 구두 루시블랙', 59000);
insert into product values('S0003', 'ROMANTIC MOVE', '뉴탐페레 첼시 부츠 R17M077 (블랙)', 198000);
insert into product values('S0004', 'DR.MARTENS', '3홀 모노 블랙', 190000);
insert into product values('S0005', 'FIRENZE ATELIER', '볼륨 라운드토 5CM 더비슈즈', 98000);
insert into product values('S0006', 'WETHEROAD', '클리프 스퀘어토 4홀 더비슈즈 블랙', 89000);

insert into product values('A0001', '247 SEOUL', '247 캐시미어 머플러 [GREY]', 39900);
insert into product values('A0002', 'DOFFJASON', '미니멀 스퀘어 하드레더 벨트', 43000);
insert into product values('A0003', 'CPGN STUDIO', '헤리티지 체크 머플러 챠콜', 38000);
insert into product values('A0004', 'CPGN STUDIO', '헤리티지 체크 머플러 베이지', 38000);
insert into product values('A0005', 'TIERUST ', '슬림 스트라이프 니트 넥타이', 25000);
insert into product values('A0006', 'STANDARD', '실크 레지멘탈 타이 [네이비]', 23900);
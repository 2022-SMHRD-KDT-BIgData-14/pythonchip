
desc store

select * from store

select * from Store where store_name LIKE '%by%'

location_gu
location_dong

select * from Store where location_gu||' '||location_dong LIKE'%%' 

select * from menu

select * from Store where store_name='느린먹거리by부각마을'

select * from menu where store_seq = 163

select * from Store where store_seq= 163

select * from Menu where menu_name LIKE'%막걸리%'

select store_seq from Menu where menu_name LIKE'%삼%'group by store_seq

select * from Store where store_seq in
(select store_seq from Menu where menu_name LIKE'%삼%'group by store_seq)

select * from Store, menu where store.store_seq =
(select store_seq from Menu where menu_name LIKE'%삼%'group by store_seq)


select * from Store where store_seq in 
(select store_seq from Menu where menu_name LIKE'%막걸리%' group by store_seq)

select * from Store where store_seq in
(select store_seq from Menu where menu_name LIKE%${value}% group by store_seq)

select keyword from store group by keyword

select * from Store where keyword 

select * from user_table

select * from board

--게시판 초기화
truncate table board

--게시판 시퀀스 삭제
DROP SEQUENCE board_seq

--게시판 시퀀스 생성
create sequence board_seq
start with 1
increment by 1


create table store_view(
age10 number DEFAULT 0,
age20 number DEFAULT 0,
age30 number DEFAULT 0,
age40 number DEFAULT 0,
age50 number DEFAULT 0,
age60 number DEFAULT 0,
man number DEFAULT 0,
woman number DEFAULT 0,
store_seq number DEFAULT 0,
constraint store_view_store_seq_fk foreign key(store_seq) references store(store_seq)
)
select * from Store
select * from Store_view
insert into store_view(store_seq) values(140)


select * from store_view where store_seq=1

update store_view set age10 = 278,age20 = 456,age30 = 345,age40 = 255,age50 = 634,age60 = 123, man= 728,  woman= 928where store_seq=141


update store_view set age10 = 512, woman= 781 where store_seq=140

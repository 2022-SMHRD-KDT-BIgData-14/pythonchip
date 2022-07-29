
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




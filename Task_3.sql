--Film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.
Select * from film
where title like '%n'
order by lenght asc
limit 5;

--Film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.
Select * from film
where title like '%n'
order by lenght desc
offset 5
limit 10;

--Customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.
Select * from customer
where store_id = '1'
order by last_name desc
limit 4;

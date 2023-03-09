--Film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en düşük 4 filmi sıralayınız.
Select title, length, replacement_cost from film
where title like 'K%'
order by length desc, replacement_cost asc 
limit 4;

--Film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?
Select rating, count(*) from film
group by rating 
order by count desc
limit 1;

--Category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.
Select category.name, count(*) from category
join film_category 
on category.category_id = film_category.category_id
join film 
on film.film_id = film_category.film_id
group by category.name

--Film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kaç tane film vardır?
Select count(*) from film
where title ilike '%e%e%e%e%'

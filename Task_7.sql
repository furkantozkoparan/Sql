--Film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
Select count(*) from film
where length > (select avg(length) from film);

--Film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
Select count(*) from film
where rental_rate = (select max(rental_rate) from film);

--Film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.
Select * from film
where rental_rate = (select min(rental_rate) from film) 
and replacement_cost = (select min(replacement_cost) from film)

--Payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
Select customer_id, count(*) from payment
group by customer_id
order by count desc;

--Film uzunluğu en fazla olan filmlerin isimlerini, uzunluğunu, actor isim ve soyisimleri ile birlikte yazdıralım.
Select film.title, film.length, actor.first_name, actor.last_name from film
inner join film_actor 
on film.film_id = film_actor.film_id
inner join actor 
on film_actor.actor_id = actor.actor_id
where length = 
(select max(length) from film);

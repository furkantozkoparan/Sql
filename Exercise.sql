--Film tablosunda (a, e, i, o, u) ile biten film isimlerinin listesini sorgulayın.
select title from film
where title like '%a' or title like '%e' or title like '%i' or title like '%o' or title like '%u';

--Employee tablosunda ayda 2000'den fazla maaş alan ve 10 aydan daha kısa süredir çalışanları sounucunu employee_id ye göre artan şekilde sıralayın.
select name from employee
where salary > 2000 and months < 10
order by employee_id asc;

--Film tablosunda film_id'si çift sayı olan verileri sıralayın.
select * from film
where film_id %2 = 0

--Film tablosunda film_id'si tek sayı olan verileri sıralayın.
select * from film
where film_id %2 = 1

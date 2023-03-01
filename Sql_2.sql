--Customers tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
Select * from Customers 
Where country like 'A%a';

--Customers tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
Select * from Customers
Where country like '_____n';

--Film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.
Select * from film
where title 'C%' and lenght > 90 and rental_rate = '2.99';

--Film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
Select distinct replacement_cost from film;

--Film tablosunda bulunan replacement_cost sütununda kaç tane veri vardır?
Select count (replacement_cost) from film;

--Film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
Select count (distinct replacement_cost) from film;

--Film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
Select count (*) from film;
Where title like'T%' and rating = 'G';

--Country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
Select count (*) from country
Where country like '_____';

--City tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
Select count (*) from city
Where city Ilike '%r';

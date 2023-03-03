--Film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
Select rating, count(*) from film
group by rating;

--Film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
Select replacement_cost, count(*) from film
group by replacement_cost
having count(*) > 50;

--Customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?
Select store_id, count (*) from customer
group by store_id;

--City tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
Select country_id, count(*) from city
group by country_id
order by count desc
limit 1;

--Actor tablosunda bulunan first_name sütununa isim, last_name sütununa soyisim geçici isimlerini veriniz.
Select first_name as ''isim'', last_name as ''soyisim'' from actor;

--Actor tablosunda bulunan first_name ve last_name sütunlarındaki verieri birleştirin ve geçici isim olarak 'İsim Soyisim' veriniz.
Select concat (first_name, ' ', last_name) as 'İsim Soyisim' from actor;

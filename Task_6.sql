--City tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
Select city.city, country.country from city
inner join country
on city.country_id = country.country_id;

--Customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
Select payment.payment_id, customer.first_name, customer.last_name from customer
inner join payment
on customer.customer_id = payment.customer_id;

--Customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
Select rental.rental_id, customer.first_name, customer.last_name from customer
inner join rental
on customer.customer_id = rental.customer_id;

--City tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
Select city.city, country.country from city
left join country
on city.country_id = country.country_id;

--Customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
Select payment.payment_id, customer.first_name, customer.last_name from customer
right join payment
on customer.customer_id = payment.customer_id;

--Customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.
Select rental.rental_id, customer.first_name, customer.last_name from rental
full join customer 
on rental.customer_id = customer.customer_id;

--Actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
Select first_name from actor
union 
select first_name from customer;

--Actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
Select first_name from actor
intersect
select first_name from customer;

--Actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
Select first_name from actor
except
select first_name from customer;

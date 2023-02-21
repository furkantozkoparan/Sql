-- Actor tablosundaki first_name ve last_name sütunlarındaki verileri sırala.
Select first_name, last_name from actor;

-- Film tablosundaki title ve rental_rate sütünlarındaki verilerinden rental_rate değeri 0.99 olanları sırala.
Select title, rental_rate from film 
Where rental_rate = 0.99;

-- Film tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (lenght) 60'dan büyük ve 75'ten küçük olma koşulu ile sırala.
Select * from film
Where lenght > 60 and lenght < 75;

-- Film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 ve replacement_cost 12.99 veya 28.99 olma koşulları ile sırala.
Select * from film
Where rental_rate = 0.99 and (replacement_cost = 12.99 or replacement_cost = 28.99); 

-- Customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?
Select last_name from customer
Where first_name = 'Mary';

-- Film tablosundaki uzunluğu (lenght) 50'den büyük olmayıp aynı zamanda rental_rate değeri 2.99 veya 4.99 olmayan verileri sırala.
Select * from film
Where lenght < 50 and (not rental_rate = 2.99 or not rental_rate = 4.99);

-- Film tablosunda bulunan tüm sütunlardaki verileri replacement cost değeri 12.99 dan büyük eşit ve 16.99'dan küçük olma koşuluyla sırala. (Between-And Yapısını Kullanın)
Select * from film
Where replacement_cost between 12.99 and 16.99; 

-- Actor tablosunda bulunan first_name ve last_name sütunlarındaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' değerleri olması koşuluyla sırala.(IN Operatörünü Kullanın)
Select first_name, last_name from actor
Where first_name in ('Penalope', 'Nick', 'Ed');

-- Film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 ve replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayın. ( IN operatörünü kullanın)
Select * from film
Where rental_rate in ('0.99', '2.99', '4.99') and replacement_cost in ('12.99', '15.99', '28.99');

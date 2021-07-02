SELECT title,LENGTH FROM film WHERE length BETWEEN 90 AND 120;
SELECT * FROM film WHERE length NOT BETWEEN 90 AND 120;
SELECT * FROM film WHERE length in(40,50,60);
--Homework2
--1.film tablosunda bulunan tüm sütunlardaki verileri replacement cost değeri 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla
SELECT * FROM film WHERE replacement_cost >=12.99 AND replacement_cost <16.99 ;
--with between and
SELECT * FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.98 ;
--2. actor tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' değerleri olması koşuluyla sıralayınız. ( IN operatörünü kullanınız.)
SELECT first_name,last_name from actor WHERE first_name in ('Penelope','Nick','Ed') ;
--3. film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 VE replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız.  (IN operatörünü kullanınız.)
SELECT * FROM film WHERE rental_rate in (0.99,2.99,4.99) AND replacement_cost in (12.99,15.99,28.99);
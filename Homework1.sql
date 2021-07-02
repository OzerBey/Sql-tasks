--select column1 form table1;
--SELECT * FROM	film;
--SELECT first_name,last_name FROM actor
/*SELECT 
   first_name || ' ' || last_name as adiSoyadi,
   last_update 
FROM
actor;*/
/*SELECT * from film WHERE rental_rate != 2.99 AND replacement_cost BETWEEN 28 and 29
SELECT first_name,last_name FROM actor WHERE first_name ='Penelope' AND last_name LIKE 'M%';
SELECT * FROM film WHERE rental_rate =4.99 AND rental_duration =3 AND replacement_cost>20 ;
SELECT * FROM film WHERE NOT (rental_rate =4.99 AND replacement_cost=20.99);
SELECT * FROM actor WHERE first_name ='Penelope' AND last_name = 'Monroe' AND last_name ='Swankx' OR first_name ='Joe';
*/
--Homework1: 
--1. film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.
SELECT title as film_adi ,description from film
--2. film tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.
SELECT * FROM film WHERE length > 60 AND length < 75 ; 
--3. film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.
SELECT * FROM film where rental_Rate =0.99 AND replacement_cost =12.99 OR replacement_cost =28.99 ;
--4. customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?
SELECT last_name FROM customer WHERE first_name ='Mary';
--5. film tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.
SELECT * FROM film WHERE NOT length > 50 AND NOT (rental_rate =2.99 OR rental_rate=4.99);










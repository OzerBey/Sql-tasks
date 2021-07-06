-- COUNT, MIN, MAX, AVG, SUM 
SELECT * FROM film;
SELECT ROUND(AVG(length),4) FROM film -- ROUND(dp or numeric) virgülden sonraki kısıt
SELECT MAX(length), MIN(length), SUM(replacement_cost) FROM film;
--rentalrate'i 0.99 olan en uzun film hangisidir.
SELECT MAX(length) FROM film WHERE rental_rate =2.99;
--Homework6 :
--1. film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
SELECT ROUND(AVG(rental_rate),4) FROM film;
--2. film tablosunda bulunan filmlerden kaçtanesi 'C' karekteri ile başlar?
SELECT COUNT(*) FROM film WHERE title ILIKE ('c%');
--3. film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
SELECT MAX(length) FROM film WHERE rental_rate =0.99;
--4. film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
SELECT COUNT(DISTINCT replacement_cost) FROM film WHERE length>150 ;

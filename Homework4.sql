SELECT DISTINCT rental_rate FROM film; --farklı olan verileri döner
SELECT DISTINCT replacement_cost FROM film;
SELECT * FROM film; --all data
SELECT DISTINCT replacement_cost,rental_rate FROM film;
SELECT DISTINCT country from country;
INSERT INTO country(country,last_update) VALUES('Muz Cumhuriyeti','2006-02-15 09:44:00');

SELECT * FROM country;
SELECT * FROM actor;

SELECT DISTINCT country || '->' || country_id || '-> ' || last_update FROM country;
SELECT COUNT(*)as a_ile_baslayanları_sayisi FROM actor WHERE first_name LIKE'A%';

SELECT COUNT(first_name)as a_ile_baslayanları_sayisi FROM actor WHERE first_name LIKE'A%';

SELECT COUNT(*) as aktor_sayisi FROM actor;

SELECT COUNT (DISTINCT first_name) FROM actor; --there is 128 first_name
SELECT COUNT(DISTINCT length) as farklı_uzulukluk_adedi FROM film;

SELECT DISTINCT length as farklı_uzulukluk_adedi FROM film;
--Homework4
--1. film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
SELECT DISTINCT replacement_cost FROM film;
--2. ilm tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
SELECT COUNT(DISTINCT replacement_cost) as farklı_degerlerinin_sayisi FROM film;
--3. film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
SELECT COUNT(*) FROM film WHERE title LIKE 'T%' AND rating ='G'; --number of result is 9
--4. country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
SELECT COUNT(DISTINCT country) FROM country WHERE country LIKE '_____';
--5. city tablosundaki şehir isimlerinin kaçtanesi 'R' veya r karakteri ile biter?
SELECT COUNT(DISTINCT city) FROM city WHERE city ILIKE '%r';--number of city is 33
select * from city where city like '%r'
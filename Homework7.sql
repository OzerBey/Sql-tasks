--!!!!--
SELECT * FROM film;
--GROUP BY
SELECT MAX(rental_rate) FROM film;

SELECT rating, COUNT(*) FROM film GROUP BY rating ;
--her bir unique replacement_cost a karşılık gelen en kısa film süreli filmler
SELECT replacement_cost, MIN(length) FROM film GROUP BY replacement_cost;
--birbirinden farklı replacement sayisi:
SELECT COUNT(DISTINCT replacement_cost) FROM film;
SELECT replacement_cost,rental_rate, MIN(length) FROM film GROUP BY replacement_cost,rental_rate;
SELECT replacement_cost,rental_rate, MIN(length) FROM film GROUP BY replacement_cost,rental_rate ORDER BY replacement_cost LIMIT 5;
/*HAVING*/--gruplanmış verilere koşul eklemek için kullanılır. (having grup bazlı filtre uyguluyor where ise satır bazlı filtre uyguluyor)
SELECT rental_rate, COUNT(*) FROM film GROUP BY rental_rate HAVING COUNT(*)>325;
SELECT * FROM payment;
--kaç satış yapıldı, toplam satışı 7300den fazla olanları getir
SELECT staff_id,COUNT(*) FROM payment GROUP BY staff_id HAVING COUNT(*)>7300;
--toplamda 100 den falza satış yapan müşterileri listele / sırala
SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id HAVING SUM(amount) >100 ORDER BY SUM(amount) ;
--Homework7:
--1. film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
SELECT rating FROM film GROUP BY rating;
--2. film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
SELECT replacement_cost, COUNT(title) FROM film GROUP BY replacement_cost HAVING COUNT(title)>50; 
--3. customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?
SELECT store_id, COUNT(*) FROM customer GROUP BY store_id;
--4. city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
SELECT country_id,COUNT(city) FROM city GROUP BY country_id ORDER BY COUNT(*) DESC LIMIT 1;
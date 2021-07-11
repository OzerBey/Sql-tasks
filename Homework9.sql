--INNER JOIN example--
SELECT <sütun_adı>, <sütun_adı> ...
FROM <tablo1_adı>
INNER JOIN <tablo2_adı>
ON <tablo1_adı>.<sütun_adı> = <tablo2_adı>.<sütun_adı>;

SELECT title,first_name,last_name FROM book
INNER JOIN author ON book.author_id=author.id;

--//JOIN keyword is INNER JOIN as default..
SELECT title,first_name,last_name FROM book
JOIN author ON book.author_id=author.id;
--inner join simetriktir sıra farketmeksizin farklı sorgulanabilir.
--	HOMEWORK9 --
-- city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT * FROM city INNER JOIN country ON city.country_id=country.country_id;

--customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT * FROM customer;
SELECT * FROM payment;
SELECT payment.payment_id,customer.first_name,customer.last_name FROM customer JOIN payment ON payment.customer_id=customer.customer_id;
--customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT * FROM customer;
SELECT * FROM rental;
SELECT rental_id,first_name,last_name FROM customer JOIN rental ON rental.customer_id=customer.customer_id;



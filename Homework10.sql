-- LEFT JOIN --
öncelikle tablo1 deki değerleri alır sonra bu tablo1 deki verilerle eşleşen tablo2 deki verileri alıyordu..

SELECT <sütun_adı>, <sütun_adı> ...
FROM <tablo1_adı>
LEFT JOIN <tablo2_adı>
ON <tablo1_adı>.<sütun_adı> = <tablo2_adı>.<sütun_adı>;

SELECT * FROM author;
SELECT * FROM book;

SELECT first_name,last_name,title from author LEFT JOIN book ON author.id=book.author_id;

--foreign key kısıtı kaldırma
ALTER TABLE book DROP CONSTRAINT book_author_id_fkey;

--inner join kullanmadan 

SELECT first_name,last_name,title from author LEFT JOIN book ON author.id=book.author_id WHERE book.id IS NOT NULL ORDER BY book.title;

-- RIGHT JOIN --
LEFT JOIN nin tam tersi olarak önceligi tablo2 ye veriyor

SELECT <sütun_adı>, <sütun_adı> ...
FROM <tablo1_adı>
RIGHT JOIN <tablo2_adı>
ON <tablo1_adı>.<sütun_adı> = <tablo2_adı>.<sütun_adı>;


SELECT first_name,last_name,title from author RIGHT JOIN book ON author.id=book.author_id WHERE book.id IS NOT NULL ORDER BY book.title;

-- FULL JOIN --
full joinde ise tablo1 de ve tablo2 de bulunan tüm değerler alınır..

SELECT <sütun_adı>, <sütun_adı> ...
FROM <tablo1_adı>
FULL JOIN <tablo2_adı>
ON <tablo1_adı>.<sütun_adı> = <tablo2_adı>.<sütun_adı>;

--tabloların ortak verileri full join kullanarak
SELECT * from author FULL JOIN book ON author.id=book.author_id WHERE (book.id IS NOT NULL AND author.id IS NOT NULL);

--tabloların ortak olmayan verileri
SELECT * from author FULL JOIN book ON author.id=book.author_id WHERE (book.id IS NULL OR author.id IS NULL);

--- || HOMEWORK 10 || ---
--1. city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
SELECT city,country FROM city LEFT JOIN country ON city.country_id=country.country_id;

--2. customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
SELECT payment.payment_id,customer.first_name,customer.last_name FROM customer LEFT JOIN payment ON payment.customer_id=customer.customer_id;

--3. customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.
SELECT rental.rental_id,customer.first_name,customer.last_name FROM customer FULL JOIN rental ON rental.customer_id=customer.customer_id;

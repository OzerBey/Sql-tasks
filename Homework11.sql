-- UNION --
--Birden daha fazla select sorgusunda oluşan sonuçları tek bir sonuç kümesinde göstermeye yarar.
--!! istenilen sorgularda sütun sayıları ve veri tipleri aynı olmalı
(SELECT * FROM book ORDER BY page_number DESC LIMIT 5)
UNION ALL
(SELECT * FROM book ORDER BY title LIMIT 5);
--PS: UNION sadece çift(tekrar eden) deger varsa birini getir hepsine erişmek istiyorsak UNION ALL keyword unu kullanırız
(SELECT id,email FROM author )
UNION
(SELECT id,title FROM book );

-- INTERSECT AND EXCEPT --
--INTERSECT: uniondaki sorgunun kesişimlerini alırız
SELECT <sütun_adı>, <sütun_adı>...
FROM <table1>
INTERSECT
SELECT <sütun_adı>, <sütun_adı>...
FROM <table2>

--EXCEPT: ilk sorguda bulunan ancak ikinci sorguda bulunmayan verileri alırız
SELECT <sütun_adı>, <sütun_adı>...
FROM <table1>
EXCEPT
SELECT <sütun_adı>, <sütun_adı>...
FROM <table2>
--?-examples
(SELECT * FROM book ORDER BY page_number DESC LIMIT 10)
INTERSECT
(SELECT * FROM book ORDER BY title LIMIT 10);

(SELECT * FROM book ORDER BY page_number DESC LIMIT 5)
EXCEPT
(SELECT * FROM book ORDER BY title LIMIT 5);
-- || HOMEWORK 11 || --
--1. actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
SELECT actor.first_name FROM actor 
UNION
SELECT customer.first_name FROM customer;
--2. actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
SELECT actor.first_name FROM actor 
INTERSECT
SELECT customer.first_name FROM customer;
--3. actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
SELECT actor.first_name FROM actor 
EXCEPT
SELECT customer.first_name FROM customer;
--4. İlk 3 sorguyu tekrar eden veriler için de yapalım.
(SELECT first_name FROM actor)
UNION ALL
(SELECT first_name FROM customer);
--
(SELECT first_name FROM actor)
INTERSECT ALL
(SELECT first_name FROM customer);
--
(SELECT first_name FROM actor)
EXCEPT ALL
(SELECT first_name FROM customer);
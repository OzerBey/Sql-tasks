--Extra query examples--
--// kitap sayısı sayısı ortalama kitap sayfası sayısından fazla olan kitap isimlerini, yazar isim ve soyisimleri ile birlikte sıralayalım.
SELECT author.first_name,author.last_name,book.title,book.page_number FROM book INNER JOIN author ON author.id=book.author_id WHERE page_number > (SELECT AVG(page_number) FROM book);

--// film uzunluğu en fazla olan filmlerin isimlerini, uzunluğunu actor isim ve soyisimleri ile birlikte yazdıralım.
SELECT CONCAT(actor.first_name,' ',actor.last_name) AS AdSoyad,film.title,film.length FROM actor 
JOIN film_actor ON film_actor.actor_id=actor.actor_id
JOIN film ON film.film_id=film_actor.film_id WHERE film.length = 
(
SELECT MAX(length) FROM film
);

SELECT * FROM film_actor;
SELECT * FROM film;
-- film tablosundan 'K' karakteri ile başlayan en uzun ve replacement_cost u en düşük 4 filmi sıralayınız.
SELECT * FROM film WHERE title LIKE('K%') ORDER BY length DESC ,replacement_cost ASC LIMIT 4;  
-- film tablosunda içerisinde en fazla sayıda film bulunduran rating kategorisi hangisidir?
SELECT rating, COUNT(rating) from film GROUP BY rating ORDER BY COUNT(*) DESC LIMIT 1;

-- customer tablosunda en çok alışveriş yapan müşterinin adı nedir?
SELECT * FROM payment;
SELECT customer.first_name, SUM(amount) AS alisverisToplam FROM customer JOIN payment ON payment.customer_id=customer.customer_id
GROUP BY customer.first_name 
ORDER BY alisverisToplam DESC LIMIT 1;

-- category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.
SELECT * FROM film_category;
SELECT category.name, COUNT(category) AS kategori_sayisi FROM category 
JOIN film_category ON film_category.category_id=category.category_id
GROUP BY name
ORDER BY kategori_sayisi DESC;

-- film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kaç tane film vardır?
SELECT COUNT(*) FROM film WHERE title ILIKE ('%E%e%E%e%');

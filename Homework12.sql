-- ||Subqueries|| --
SELECT * FROM book WHERE page_number>466;

SELECT page_number FROM book WHERE title ='Thirty Seconds Over Tokyo';
--dinamik bağlama (önce subquery(altsorgu) çalışır)
SELECT * FROM book WHERE page_number > (SELECT page_number FROM book WHERE title ='Thirty Seconds Over Tokyo');

SELECT title,page_number,(SELECT MAX(page_number) FROM book),((SELECT MAX(page_number) FROM book)-page_number) AS differ FROM book WHERE page_number >
(
SELECT page_number FROM book WHERE title='Thirty Seconds Over Tokyo'
 );
 
 -- ||Any & All|| --
 --ANY: altsorguda herhangi bir koşul doğru oldugu zaman bize o değerleri verir
 --ALL: olması için tüm koşulların uyması gerekiyor
 SELECT first_name,last_name FROM author WHERE id = ANY (SELECT id FROM book WHERE title='Abe Lincoln in Illinots' OR title ='Saving Shiloh'); 
 
  SELECT first_name,last_name FROM author WHERE id > ANY (SELECT id FROM book WHERE title='Abe Lincoln in Illinots' OR title ='Saving Shiloh'); 
		
  SELECT first_name,last_name FROM author WHERE id > ALL (SELECT id FROM book WHERE title='Abe Lincoln in Illinots' OR title ='Saving Shiloh'); 
 -- || HOMEWORK12 ||--

--1. film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(*) FROM film WHERE length >(SELECT AVG(length) FROM film);

--2. film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(*) FROM film WHERE rental_rate = (SELECT MAX(rental_rate)FROM film);

--3. film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.
 SELECT rental_rate AS enDusukRentalRate, replacement_cost AS enDusukReplacementCost FROM film WHERE (rental_rate=(SELECT MIN(rental_rate) FROM film)) AND (replacement_cost=(SELECT MIN(replacement_cost) FROM film));
 
 --4. payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT customer_id,COUNT(*) FROM payment GROUP BY customer_id ORDER BY COUNT(*) DESC;

 --with join operation
SELECT customer.first_name,customer.last_name, COUNT(*) FROM payment INNER JOIN customer ON customer.customer_id=payment.customer_id GROUP BY customer.first_name, customer.last_name;
 
 
 
 
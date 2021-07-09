--(!)foreign key başka bir tablodaki satıra referans verir.	
	--foreign keyler tekrar edebilir ve duruma göre değişebilirler.
--create other table 
CREATE TABLE book(
	id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	page_number INTEGER NOT NULL,
	author_id INTEGER REFERENCES author(id)
);

SELECT * FROM book;
SELECT * FROM author;
--insertion to the book table
insert into book (title, page_number, author_id) values ('White Banners', 62, 9);
insert into book (title, page_number, author_id) values ('Saving Shiloh', 580, 10);
insert into book (title, page_number, author_id) values ('Abe Lincoln in Illinots', 105, 6);
insert into book (title, page_number, author_id) values ('Apache Territory ', 286, 1);
insert into book (title, page_number, author_id) values ('Out 1: Spectre', 402, 9);
insert into book (title, page_number, author_id) values ('Trials of Muhammad Ali, The', 164, 5);
insert into book (title, page_number, author_id) values ('B.U.S.T.E.D (Everybody Loves Sunshine) (Busted)', 84, 10);
insert into book (title, page_number, author_id) values ('Father Sergius (Otets Sergiy)', 265, 9);
insert into book (title, page_number, author_id) values ('It Started in Naples', 838, 8);
insert into book (title, page_number, author_id) values ('Thirty Seconds Over Tokyo', 586, 1);
insert into book (title, page_number, author_id) values ('Return to Homs, The', 580, 9);
insert into book (title, page_number, author_id) values ('Cutie Honey', 788, 8);
insert into book (title, page_number, author_id) values ('Jackass 3.5', 834, 1);
insert into book (title, page_number, author_id) values ('Baby On Board', 339, 7);
insert into book (title, page_number, author_id) values ('Making Plans for Lena (Non ma fille, tu n''iras pas danser)', 375, 7);
--(!)Primary key benzersiz olmalı çakışmadan ayrışması için P.S: Bir tabloda sadece bir tane primary key sütunu olur.
--1 no lu yazarın kitapalarını sırala
SELECT * FROM book WHERE author_id=1;
--tüm kitaplar ile birlikte yazar bilgilerini de sırala (author+book tables) JOIN operation
SELECT * FROM book JOIN author ON book.author_id=author.id;
																		--VERI TIPLERI--
/*sütuna girilmesi istenen verileri en başta berlirlemek için kullanırlar*/
CREATE TABLE test(
	real_type REAL,
	double_type DOUBLE PRECISION,
	numberic_type NUMERIC --hassas veriler için
);

INSERT INTO test VALUES(
1.12345678912345678912,
1.12345678912345678912,
1.12345678912345678912);

SELECT * FROM test;

CREATE TABLE test2(
	float4_type FLOAT4,
	float8_type FLOAT8,
	decimal_type DECIMAL
);

INSERT INTO test2 VALUES(
1.12345678912345678912,
1.12345678912345678912,
1.12345678912345678912);
SELECT * FROM test2;
SELECT (10.0::INTEGER);
SELECT (10.4444444444444444444444444::REAL);
SELECT (10.4444444444444444444444444::DOUBLE PRECISION);
SELECT (10.4444444444444444444444444::NUMERIC);
--character types
SELECT ('Lorem'::CHAR (10)); --char sabit atanan deger kadar yer acıyor
SELECT ('Lorem ipsum dolor sit amet'::CHAR (10));
SELECT ('Lorem' ::VARCHAR (10));--varchar ile char tek farkı içerisindeki degerden küçükse fazladan yer açmıyor içindeki veri kadar yer açıyor.
SELECT ('Lorem' ::VARCHAR);--varchar için sınırlama koymadan da oluyor
SELECT ('Lorem ipsum dolor sit amet'::VARCHAR (18));
SELECT ('Lorem'::TEXT);
SELECT ('Lorem ipsum dolor sit amet'::TEXT);
--**Boolean types**--
--1,yes,true,on is true in PostgreSql
--0,no,false,off is false in PostgreSql
SELECT (true, 'yes', 't', 1) TRUE
SELECT (false, 'no', 'f', e) FALSE
SELECT ('no'::BOOLEAN) ;
SELECT (1:: BOOLEAN);
SELECT ('f'::BOOLEAN);
SELECT (true::BOOLEAN) ;
SELECT (NULL::BOOLEAN) ;
--**Date/Time Types**--
SELECT ('1988-12-03'::DATE);
SELECT ('DEC-03-1980'::DATE);
SELECT ('DEC 03 1980'::DATE);
SELECT ('1980 December 03'::DATE);
SELECT ('03:44'::TIME);
SELECT ('03:44 AM'::TIME);
SELECT ('03:44 PM'::TIME);
SELECT ('03:44:11'::TIME);
SELECT ('02:16::TIME WITH TIME ZONE');
SELECT ('1980 December 03 02:16:07':: TIMESTAMP);
--NOT NULL--
CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	username VARCHAR(20),
	email VARCHAR(50),
	age INTEGER
);

SELECT * FROM users;
--insertion data to users table
INSERT INTO users(username,email,age) VALUES('','gamer@gmail.com',35);
--ALTER tablo değişiklik komutu

ALTER TABLE users
ALTER COLUMN username
SET NOT NULL;

DELETE FROM users WHERE username IS NULL RETURNING*;
--UNIQUE KEY

INSERT INTO users(username,email,age) VALUES('tester3','tester3@gmail.com',55);

ALTER TABLE users ADD UNIQUE(email);

SELECT * FROM users;
--CHECK kısıtlaması  
INSERT INTO users(username,email,age) VALUES('gamer3', 'gamer3@gmail.com',-22);
--tabloda bir sutuna kısıt getirme
ALTER TABLE users add CHECK(age>18);

DELETE FROM users WHERE id=9;

INSERT INTO users(username,email,age) VALUES('gamer4', 'gamer4@gmail.com',27) RETURNING*;

--tablo olustururken kısıt belirleme
CREATE TABLE products(
	product_no INTEGER,
	name text,
	price numeric CHECK (price>0),
	discounted_price numeric CHECK (discounted_price>0),
	CHECK (price>discounted_price)
);
SELECT * FROM products;

INSERT INTO products(product_no,name,price,discounted_price) VALUES(1, 'test product',15,12);

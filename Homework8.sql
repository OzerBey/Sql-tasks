SELECT * FROM actor;
SELECT first_name AS "aktor adi", last_name AS "aktor soyadı" FROM actor;
SELECT COUNT(*) as "aktor sayisi" FROM actor;
SELECT CONCAT(first_name, ' ', last_name) AS "isim ve soyisim" FROM actor; --concat kullanımı 'bileştirmede kullanılır'-- SERIAL : numeric (sayısal) bir deger olarak tanımlar ve otomatik olarak artmasını sağlar;
/*TABLO oluşturma (create tables)
	CREATE TABLE <table_name> (
	<column_name> <data_type> <constraint>,	
	...
	<column_name> <data_type> <constraint>,
	);
*/
CREATE TABLE author(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	birthday DATE);
	/*--control the author table of database
	SELECT * FROM author;
	--data insertion to author table 
	INSERT INTO author(first_name,last_name,email,birthday) VALUES 
	('Yasin','ÖZER','yasinozeriletisim@gmail.com','1998-05-15'),
	('Zeynep Nur','ÖZER','zeynep@abc.com','2013-12-08'),
	('Stefan','ZWEIG','stefan_zweig@abc.com','1881-11-28'),
	('Halide Edip','ADIVAR','yasinozeriletisim@gmail.com','1884-07-11');
	--create table2 same author table
	CREATE TABLE author2 (LIKE author);
	SELECT * FROM author2;
	SELECT * FROM author3;
	--table clone from other table
	INSERT INTO author2 SELECT * FROM author WHERE last_name ='ÖZER';
	--copying the table with their datas
	CREATE TABLE author3 AS SELECT * FROM author;
	--deleting the tables if exists 
	DROP TABLE IF EXISTS author2;*/
	SELECT * FROM author;
/*	insert into author (first_name, last_name, email, birthday) values ('Margareta', 'Copp', 'mcopp0@ehow.com', '1965-12-25');
insert into author (first_name, last_name, email, birthday) values ('Hugibert', 'Kubicki', 'hkubicki1@tinypic.com', '1980-01-29');
insert into author (first_name, last_name, email, birthday) values ('Lalo', 'Mauchlen', 'lmauchlen2@mail.ru', '1916-11-07');
insert into author (first_name, last_name, email, birthday) values ('Gareth', 'Shorrock', 'gshorrock3@nymag.com', '1988-03-29');
insert into author (first_name, last_name, email, birthday) values ('Herbie', 'Paoli', 'hpaoli4@alexa.com', '1965-08-31');
insert into author (first_name, last_name, email, birthday) values ('Artair', 'Van Giffen', 'avangiffen5@xinhuanet.com', '1908-12-26');
insert into author (first_name, last_name, email, birthday) values ('Jordan', 'Ingliby', 'jingliby6@netlog.com', '1938-09-01');
insert into author (first_name, last_name, email, birthday) values ('Godwin', 'Verrechia', 'gverrechia7@guardian.co.uk', null);
insert into author (first_name, last_name, email, birthday) values ('Shirl', 'Manklow', 'smanklow8@tuttocitta.it', '1944-03-26');
insert into author (first_name, last_name, email, birthday) values ('Rena', 'Risdale', 'rrisdale9@tinypic.com', '1931-07-18');
insert into author (first_name, last_name, email, birthday) values ('Annalee', 'Losemann', 'alosemanna@google.co.jp', null);
insert into author (first_name, last_name, email, birthday) values ('Errick', 'Kruschev', null, '1907-05-13');
insert into author (first_name, last_name, email, birthday) values ('Donni', 'Rumsby', 'drumsbyc@sitemeter.com', '1969-04-14');
insert into author (first_name, last_name, email, birthday) values ('Agnola', 'Gepp', 'ageppd@ifeng.com', '1989-06-03');
insert into author (first_name, last_name, email, birthday) values ('Federico', 'Ashdown', 'fashdowne@phoca.cz', '1924-08-04');
insert into author (first_name, last_name, email, birthday) values ('Guendolen', 'Densham', 'gdenshamf@youtu.be', '1939-10-06');
insert into author (first_name, last_name, email, birthday) values ('Booth', 'Tamsett', 'btamsettg@auda.org.au', '1901-01-13');
insert into author (first_name, last_name, email, birthday) values ('Margarita', 'Karus', 'mkarush@sohu.com', '1901-10-08');
insert into author (first_name, last_name, email, birthday) values ('Rosalia', 'Bencher', 'rbencheri@statcounter.com', '1903-05-12');
insert into author (first_name, last_name, email, birthday) values ('Demetria', 'Kowal', 'dkowalj@upenn.edu', '1950-09-06');
insert into author (first_name, last_name, email, birthday) values ('Inglebert', 'Trahair', 'itrahairk@yahoo.co.jp', null);
insert into author (first_name, last_name, email, birthday) values ('Lorraine', 'Blezard', 'lblezardl@nature.com', null);
insert into author (first_name, last_name, email, birthday) values ('Robbie', 'Karpfen', 'rkarpfenm@behance.net', null);
insert into author (first_name, last_name, email, birthday) values ('Tamiko', 'Escudier', 'tescudiern@blogtalkradio.com', '1955-03-25');
insert into author (first_name, last_name, email, birthday) values ('Gearard', 'Schust', 'gschusto@jigsy.com', '1921-02-10');
insert into author (first_name, last_name, email, birthday) values ('Kaylee', 'Danels', 'kdanelsp@issuu.com', '1923-09-25');
insert into author (first_name, last_name, email, birthday) values ('Stacee', 'McGrorty', 'smcgrortyq@liveinternet.ru', '1934-03-24');
insert into author (first_name, last_name, email, birthday) values ('Isobel', 'Yourell', 'iyourellr@theguardian.com', '1992-09-02');
insert into author (first_name, last_name, email, birthday) values ('Alison', 'Pinnick', null, '1911-12-24');
insert into author (first_name, last_name, email, birthday) values ('Archie', 'Neissen', 'aneissent@princeton.edu', null);
insert into author (first_name, last_name, email, birthday) values ('Xavier', 'Evans', 'xevansu@google.de', '1998-04-17');
insert into author (first_name, last_name, email, birthday) values ('Bronson', 'Creboe', null, '1920-01-05');
insert into author (first_name, last_name, email, birthday) values ('Ethelin', 'Fairlamb', 'efairlambw@surveymonkey.com', '1969-02-13');
insert into author (first_name, last_name, email, birthday) values ('Bax', 'De Mars', 'bdemarsx@wired.com', null);
insert into author (first_name, last_name, email, birthday) values ('Kelcey', 'Kitt', 'kkitty@usatoday.com', '1976-06-01');
insert into author (first_name, last_name, email, birthday) values ('Philbert', 'Grenter', 'pgrenterz@hao123.com', '1924-09-06');
insert into author (first_name, last_name, email, birthday) values ('Earvin', 'Aleksich', 'ealeksich10@hexun.com', '1988-01-09');
insert into author (first_name, last_name, email, birthday) values ('Pia', 'Breddy', 'pbreddy11@goodreads.com', null);
insert into author (first_name, last_name, email, birthday) values ('Audry', 'Morecombe', 'amorecombe12@surveymonkey.com', '1965-11-03');
insert into author (first_name, last_name, email, birthday) values ('Bobbe', 'Farey', 'bfarey13@wikia.com', '1985-08-04');
insert into author (first_name, last_name, email, birthday) values ('Marla', 'Jimpson', 'mjimpson14@mozilla.org', null);
insert into author (first_name, last_name, email, birthday) values ('Helge', 'Blacksland', 'hblacksland15@amazon.com', '1932-03-11');
insert into author (first_name, last_name, email, birthday) values ('Jaclin', 'Cozzi', 'jcozzi16@skyrock.com', null);
insert into author (first_name, last_name, email, birthday) values ('Sheryl', 'Chestney', 'schestney17@yolasite.com', null);
insert into author (first_name, last_name, email, birthday) values ('Hollie', 'Pardoe', 'hpardoe18@wikimedia.org', '1954-07-01');
insert into author (first_name, last_name, email, birthday) values ('Wallie', 'Guerrier', 'wguerrier19@digg.com', '1940-07-07');
insert into author (first_name, last_name, email, birthday) values ('Kinnie', 'Boyle', 'kboyle1a@myspace.com', '1909-10-28');
insert into author (first_name, last_name, email, birthday) values ('Jule', 'Eustace', 'jeustace1b@ustream.tv', '1978-04-12');
insert into author (first_name, last_name, email, birthday) values ('Kain', 'Greedier', 'kgreedier1c@friendfeed.com', '1918-09-25');
insert into author (first_name, last_name, email, birthday) values ('Gene', 'Hazleton', 'ghazleton1d@i2i.jp', '1982-07-28');
insert into author (first_name, last_name, email, birthday) values ('Galven', 'Erridge', 'gerridge1e@yandex.ru', '1969-11-15');
insert into author (first_name, last_name, email, birthday) values ('Corby', 'MacAnespie', 'cmacanespie1f@theatlantic.com', null);
insert into author (first_name, last_name, email, birthday) values ('Penn', 'Bea', 'pbea1g@skyrock.com', '1938-12-03');
insert into author (first_name, last_name, email, birthday) values ('Trude', 'Whymark', 'twhymark1h@free.fr', null);
insert into author (first_name, last_name, email, birthday) values ('Bay', 'Blaxland', null, '1941-10-01');
insert into author (first_name, last_name, email, birthday) values ('Karrie', 'Gadie', 'kgadie1j@dion.ne.jp', '1946-06-11');
insert into author (first_name, last_name, email, birthday) values ('Hector', 'Farn', 'hfarn1k@so-net.ne.jp', '1944-08-31');
insert into author (first_name, last_name, email, birthday) values ('Dag', 'Davidovic', 'ddavidovic1l@ihg.com', '1966-05-12');
insert into author (first_name, last_name, email, birthday) values ('Kelci', 'Exall', 'kexall1m@ibm.com', null);
insert into author (first_name, last_name, email, birthday) values ('Mercie', 'Andrzejczak', null, null);
insert into author (first_name, last_name, email, birthday) values ('Zilvia', 'Rimmington', 'zrimmington1o@gov.uk', '1997-09-10');
insert into author (first_name, last_name, email, birthday) values ('Bud', 'Pues', 'bpues1p@fda.gov', '1946-08-11');
insert into author (first_name, last_name, email, birthday) values ('Byron', 'Sissland', 'bsissland1q@amazon.co.uk', '1940-06-11');
insert into author (first_name, last_name, email, birthday) values ('Donall', 'Verduin', 'dverduin1r@hostgator.com', '1903-09-12');
insert into author (first_name, last_name, email, birthday) values ('Gerry', 'O''Shavlan', 'goshavlan1s@netscape.com', '1912-12-12');
insert into author (first_name, last_name, email, birthday) values ('Bat', 'Everwin', 'beverwin1t@1und1.de', '1990-07-25');
insert into author (first_name, last_name, email, birthday) values ('Cleavland', 'Iacopetti', 'ciacopetti1u@intel.com', '1976-09-06');
insert into author (first_name, last_name, email, birthday) values ('Kalle', 'Podbury', 'kpodbury1v@so-net.ne.jp', '1973-12-05');
insert into author (first_name, last_name, email, birthday) values ('Trixi', 'Behneke', 'tbehneke1w@dailymotion.com', null);
insert into author (first_name, last_name, email, birthday) values ('Ronnie', 'Brandacci', 'rbrandacci1x@vkontakte.ru', '1985-03-18');
insert into author (first_name, last_name, email, birthday) values ('Lacie', 'Hadingham', 'lhadingham1y@slate.com', '1958-10-03');
insert into author (first_name, last_name, email, birthday) values ('Ciel', 'Swett', 'cswett1z@netvibes.com', null);
insert into author (first_name, last_name, email, birthday) values ('Elwira', 'Korba', 'ekorba20@hubpages.com', null);
insert into author (first_name, last_name, email, birthday) values ('Derril', 'Bottlestone', 'dbottlestone21@webeden.co.uk', '1998-09-30');
insert into author (first_name, last_name, email, birthday) values ('Dionis', 'Roebuck', 'droebuck22@typepad.com', '1919-08-31');
insert into author (first_name, last_name, email, birthday) values ('Karrie', 'Thirkettle', 'kthirkettle23@desdev.cn', '1901-08-01');
insert into author (first_name, last_name, email, birthday) values ('Selina', 'Virgo', 'svirgo24@prweb.com', '1956-03-20');
insert into author (first_name, last_name, email, birthday) values ('Berthe', 'Hickford', 'bhickford25@techcrunch.com', '1929-11-15');
insert into author (first_name, last_name, email, birthday) values ('Moses', 'Beauly', 'mbeauly26@ovh.net', null);
insert into author (first_name, last_name, email, birthday) values ('Skipper', 'Brunt', 'sbrunt27@google.co.jp', '1985-01-01');
insert into author (first_name, last_name, email, birthday) values ('Otho', 'Klimes', 'oklimes28@npr.org', '1965-04-25');
insert into author (first_name, last_name, email, birthday) values ('Basia', 'Cess', 'bcess29@yellowbook.com', '1908-05-28');
insert into author (first_name, last_name, email, birthday) values ('Tammara', 'Pietri', 'tpietri2a@businesswire.com', '1977-06-29');
insert into author (first_name, last_name, email, birthday) values ('Caron', 'Stratley', 'cstratley2b@squarespace.com', null);
insert into author (first_name, last_name, email, birthday) values ('Collie', 'Beernt', 'cbeernt2c@netlog.com', null);
insert into author (first_name, last_name, email, birthday) values ('Janey', 'Jakubczyk', null, '1912-04-30');
insert into author (first_name, last_name, email, birthday) values ('Jacquelin', 'Endley', 'jendley2e@bandcamp.com', '1947-05-05');
insert into author (first_name, last_name, email, birthday) values ('Tomasina', 'Haugen', 'thaugen2f@mapy.cz', '1996-10-18');
insert into author (first_name, last_name, email, birthday) values ('Alleyn', 'Canario', 'acanario2g@cnn.com', '1937-04-01');
insert into author (first_name, last_name, email, birthday) values ('Dorolice', 'Watmore', null, '1947-11-06');
insert into author (first_name, last_name, email, birthday) values ('Jonah', 'Denisyev', 'jdenisyev2i@examiner.com', '1990-04-19');
insert into author (first_name, last_name, email, birthday) values ('Kathy', 'Deveril', 'kdeveril2j@nsw.gov.au', '1983-02-10');
insert into author (first_name, last_name, email, birthday) values ('Phillis', 'Staniland', null, '1903-06-07');
insert into author (first_name, last_name, email, birthday) values ('Gearard', 'Soper', 'gsoper2l@altervista.org', '1981-11-27');
insert into author (first_name, last_name, email, birthday) values ('Brittne', 'Kigelman', null, '1973-10-02');
insert into author (first_name, last_name, email, birthday) values ('Maxie', 'Craney', 'mcraney2n@skyrock.com', '1949-07-20');
insert into author (first_name, last_name, email, birthday) values ('Craggie', 'Lerven', 'clerven2o@wired.com', null);
insert into author (first_name, last_name, email, birthday) values ('Willa', 'Weems', 'wweems2p@hp.com', '1960-07-01');
insert into author (first_name, last_name, email, birthday) values ('Fayette', 'Batch', 'fbatch2q@mozilla.com', '1987-12-30');
insert into author (first_name, last_name, email, birthday) values ('Washington', 'Dungay', 'wdungay2r@blogs.com', '1916-07-22');*/
--udpate process
UPDATE <table_name> 
SET column1=value1,
column =value2,
....
WHERE condition;

UPDATE author 
SET  first_name='Emine',
			last_name ='Zola',
			email='eminem@abc.com',
			birthday='1980-01-02'
			WHERE id=99;
--returns after updated the table
UPDATE author 
SET 	last_name ='Updated'
			WHERE first_name='Lalo'
			RETURNING *;--return all raw that deleted
			
--deletion of data in a table
DELETE FROM <table_name> WHERE condition;
DELETE FROM author WHERE id>112 RETURNING *;
--//HOMEWORK//--
--1. test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee (
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
birthday DATE
);
--DROP TABLE employee;
SELECT * FROM employee;
--2. Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
/*insert into employee (name, email, birthday) values ('Winnie', 'wmcturley0@topsy.com', '1977-08-04');
insert into employee (name, email, birthday) values ('Shepherd', 'smccorkell1@zimbio.com', null);
insert into employee (name, email, birthday) values ('Arin', 'apasfield2@unblog.fr', null);
insert into employee (name, email, birthday) values ('Anett', 'alethcoe3@rakuten.co.jp', '1922-05-09');
insert into employee (name, email, birthday) values ('Phedra', 'pskunes4@newsvine.com', '1925-12-07');
insert into employee (name, email, birthday) values ('Tessy', 'tballentime5@blinklist.com', '1945-10-13');
insert into employee (name, email, birthday) values ('Marv', 'mpoor6@cmu.edu', null);
insert into employee (name, email, birthday) values ('Cassaundra', 'clillecrap7@ifeng.com', null);
insert into employee (name, email, birthday) values ('Roland', 'raspy8@shareasale.com', null);
insert into employee (name, email, birthday) values ('Amil', 'abertomieu9@indiegogo.com', null);
insert into employee (name, email, birthday) values ('Nanny', 'nsouthana@gmpg.org', '1964-10-18');
insert into employee (name, email, birthday) values ('Patsy', 'pmacgilrewyb@rakuten.co.jp', '1956-10-19');
insert into employee (name, email, birthday) values ('Caldwell', 'cgrennanc@twitter.com', null);
insert into employee (name, email, birthday) values ('Meryl', 'mbenfieldd@archive.org', '1919-11-07');
insert into employee (name, email, birthday) values ('Ed', 'egheorghee@omniture.com', '1921-05-31');
insert into employee (name, email, birthday) values ('Even', 'ebiggadykef@ning.com', null);
insert into employee (name, email, birthday) values ('Connie', 'cseamansg@microsoft.com', '1913-04-12');
insert into employee (name, email, birthday) values ('Emmet', 'equinellh@bloomberg.com', '1929-11-17');
insert into employee (name, email, birthday) values ('Rebeka', 'rmedlingi@bloglovin.com', null);
insert into employee (name, email, birthday) values ('Thurstan', 'tsellekj@irs.gov', null);
insert into employee (name, email, birthday) values ('Mabelle', 'mheymannk@unicef.org', '1948-04-27');
insert into employee (name, email, birthday) values ('Vanya', 'vcecill@odnoklassniki.ru', '1949-10-06');
insert into employee (name, email, birthday) values ('Gretchen', 'gmcmarquism@google.co.jp', '1902-06-02');
insert into employee (name, email, birthday) values ('Carmella', 'cwaszczykn@yellowpages.com', null);
insert into employee (name, email, birthday) values ('Pam', 'ppenticooto@dell.com', null);
insert into employee (name, email, birthday) values ('Dorisa', 'doughtonp@w3.org', null);
insert into employee (name, email, birthday) values ('Lock', 'lchidzoyq@vinaora.com', '1942-12-18');
insert into employee (name, email, birthday) values ('Evyn', 'eesposir@youtube.com', '1961-03-15');
insert into employee (name, email, birthday) values ('Nanci', 'npettifords@weibo.com', '1981-01-07');
insert into employee (name, email, birthday) values ('Lorelle', 'lmixt@guardian.co.uk', '1919-03-03');
insert into employee (name, email, birthday) values ('Britte', 'bmackimu@auda.org.au', '1964-04-27');
insert into employee (name, email, birthday) values ('Gwenni', 'ggaynorv@businessweek.com', '1912-03-07');
insert into employee (name, email, birthday) values ('Kahlil', 'khowbrookw@businessinsider.com', null);
insert into employee (name, email, birthday) values ('Aurelia', 'atriponyx@e-recht24.de', '1954-04-15');
insert into employee (name, email, birthday) values ('Colline', 'ccinavasy@tinyurl.com', '1954-08-05');
insert into employee (name, email, birthday) values ('Phaidra', 'pcluez@answers.com', '1915-12-16');
insert into employee (name, email, birthday) values ('Amelie', 'aloos10@list-manage.com', null);
insert into employee (name, email, birthday) values ('Jonah', 'jarkcoll11@tumblr.com', '1968-01-02');
insert into employee (name, email, birthday) values ('Noby', 'nlackney12@csmonitor.com', null);
insert into employee (name, email, birthday) values ('Gabie', 'ghadland13@yellowpages.com', '1936-05-01');
insert into employee (name, email, birthday) values ('Ogden', 'oarrow14@tinyurl.com', '1940-07-05');
insert into employee (name, email, birthday) values ('Jonie', 'jdoggett15@businessweek.com', null);
insert into employee (name, email, birthday) values ('Liliane', 'lgimbart16@unc.edu', null);
insert into employee (name, email, birthday) values ('Beltran', 'blenaghen17@gizmodo.com', '1935-08-18');
insert into employee (name, email, birthday) values ('Charita', 'cisland18@uiuc.edu', '1958-05-26');
insert into employee (name, email, birthday) values ('Daven', 'derdis19@feedburner.com', null);
insert into employee (name, email, birthday) values ('Ingmar', 'ieastridge1a@nsw.gov.au', null);
insert into employee (name, email, birthday) values ('Ardys', 'akilshall1b@w3.org', '1907-11-15');
insert into employee (name, email, birthday) values ('Chandal', 'ccowoppe1c@imdb.com', '1930-07-25');
insert into employee (name, email, birthday) values ('Ondrea', 'ocosterd1d@reference.com', '1912-01-30');*/
--3. Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET name = 'startWithMLetter'
WHERE name LIKE 'M%'
RETURNING *;
--
UPDATE employee
SET name = 'endWithKLetter'
WHERE name ILIKE '%K'
RETURNING *;
--
UPDATE employee
SET name = 'startWithRLetter'
WHERE name ~~ 'R%'
RETURNING *;
--
UPDATE employee
SET email = 'emailIsIfeng.com'
WHERE email ~~ '%@ifeng.com'
RETURNING *;
--
UPDATE employee
SET birthday = '1998-05-15'
WHERE birthday IS NULL --if birthday is null set and return all of data
RETURNING *;
--4. Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE name = 'Ed'
RETURNING *;
--
DELETE FROM employee
WHERE email = 'emailIsIfeng.com'
RETURNING *;
--
DELETE FROM employee
WHERE name ~~* '%a%a%'
RETURNING *;
--
DELETE FROM employee
WHERE name ~~ '_a%'
RETURNING *;
--
DELETE FROM employee
WHERE email ~~ '%.org'
RETURNING *;
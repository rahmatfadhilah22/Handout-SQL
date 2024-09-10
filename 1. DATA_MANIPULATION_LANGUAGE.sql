/* 
	DML atau Data Manipulation Language adalah topik SQL (Structured Query Language) yang membahas bagaimana 
	memanipulasi data yang terbagi menjadi select, insert, update, dan delete. Khusus untuk BC ini
	insert, update, dan delete akan dibahas pada topik DDL.
*/ 
/*	
	Untuk menampilkan data pada tabel kita dapat menggunakan klausa SELECT dengan rumus sebagai berikut
	SELECT NamaKolomKe1,NamaKolomKe2...dst FROM NamaTabel
*/
-- Contoh menggunakan perintah select

SELECT * FROM dbo.Employees -- Jika query ini di execute maka akan menampilkan semua data employee yang ada pada tabel Employee

SELECT FirstName,
	   LastName
FROM dbo.Employees -- Query ini akan menampilkan Nama depan, dan nama belakang semua employee pada tabel Employee

/*
	Kita juga dapat melakukan filter pada data spesifik yang ingin kita pilih dengan menggunakan klausa WHERE
	dengan rumus SELECT NamaKolom FROM NamaTabel WHERE NamaKolom operator 'Kondisi'. 
*/

-- Conntoh menggunakan klausa WHERE

SELECT * FROM dbo.Employees WHERE Country = 'UK' -- Query ini akan menampilkan data employee yang berada pada Negara UK


/*Selain menggunakan = kita juga bisa menggunakan operator logika lainnya seperti > (lebih besar), < (lebih kecil),
	>= (lebih besar sama dengan), <= (lebih kecil sama dengan), <> (tidak sama dengan),like (seperti atau mengandung),
	BEETWERN (diantara), dan IN (Dalam daftar nilai)
*/

-- Contoh menggunakan operator logika

SELECT *
FROM dbo.Employees where BirthDate > '1960-01-01' -- Query ini akan menampulkan data employee yang tanggal 1960 ke atas

-- Contoh menggunakan operator logika like

SELECT *
FROM dbo.Employees WHERE FirstName like '%R%'  -- Query ini akan menampilkan data employee yang nama depannya mengandung huruf R

/*
	Seringkali ketika diminta menampilkan data yang sangat spesifik maka diperlukan filter yang banyak, untuk hal tersebut dapat
	menggunakan operator logika AND, OR, dan NOT
 */

 -- Contoh penggunaan operator AND

 SELECT *
 FROM dbo.Employees 
 WHERE Country =  'UK' AND TitleOfCourtesy = 'Mr.' -- Query ini menampilkan daftar employee yang berasal dari UK, 
												   -- dan memiliki panggilan Mr.
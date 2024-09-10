/*
	Pada pembelajaran sebelumnya kita sudah mempelajari bagaimana cara menampilkan data, dan juga melakukan filtering,
	sekarang kita akan mempelajari klausa JOIN, GROUPBY, dan ORDERBY.
*/

/*
	Klausa JOIN digunakan untuk menghubungkan satu atau lebih tabel yang memiliki hubungan. Klausa ini terdapat empat
	jenis yaitu INNER JOIN, LEFT JOIN, RIGHT JOIN, DAN FULL JOIN. Secara sederhana dapat dipahami sebagai berikut
	1. Ibungkan baris dari dua atau lebih tabel berdasarkan kolom terkait antara mereka. Hanya baris yang memiliki
	   nilai yang sama di kedua tabel yang akan ditampilkan.
	2. Menggabungkan baris dari dua atau lebih tabel berdasarkan kolom terkait antara mereka. Semua baris dari tabel
	   pertama dan baris yang cocok dari tabel lainnya akan ditampilkan. Jika tidak ada kecocokan, hasilnya adalah NULL
	   pada sisi kanan.
	3. Kelikan dari LEFT JOIN. Menggabungkan baris dari dua atau lebih tabel berdasarkan kolom terkait antara mereka.
	   Semua baris dari tabel kedua dan baris yang cocok dari tabel lainnya akan ditampilkan. Jika tidak ada kecocokan,
	   hasilnya adalah NULL pada sisi kiri
	4. enggabungkan baris dari dua atau lebih tabel berdasarkan kolom terkait antara mereka. Jika tidak ada kecocokan,
	   hasilnya adalah NULL pada sisi yang tidak memiliki kecocokan
*/

-- Contoh penggunaan JOIN

SELECT emp.FirstName,
		prod.ProductName
FROM dbo.Employees AS emp
INNER JOIN dbo.Orders AS ord on ord.EmployeeID = emp.EmployeeID
INNER JOIN [Order Details] as ordet ON ordet.OrderID = ord.OrderID
INNER JOIN dbo.Products AS prod on prod.ProductID = ordet.ProductID

--	Query tersebut memunculkan Nama depan Employee dan nama produk yang dilayani

-- Hal yang perlu diperhatikan ketika melakukan JOIN adalah adanya kesamaan nilai antar kolom pada tabel yang ingin di JOIN
SELECT * FROM dbo.Employees
SELECT * FROM dbo.Orders

-- Pada Query diatas kita bisa melihat kesesuaian antara EmployeeID pada tabel Employee dan EmployeeID pada tabel Orders 



/*
	Klausa GROUP BY memiliki fungsi untuk melakukan grouping atau pengelompokan nilai yang biasanya akan diberikan
	agregat-agregat tertentu seperti SUM, COUNT, MIN, MAX dsb.
*/

-- Contoh penggunaan klausa GROUP BY

SELECT emp.FirstName,
		prod.ProductName,
		SUM(ordet.Quantity) AS [Total Product]
FROM dbo.Employees AS emp
INNER JOIN dbo.Orders AS ord on ord.EmployeeID = emp.EmployeeID
INNER JOIN [Order Details] as ordet ON ordet.OrderID = ord.OrderID
INNER JOIN dbo.Products AS prod on prod.ProductID = ordet.ProductID
GROUP BY emp.FirstName,
		 prod.ProductName
-- Query diatas menampilkan nama depan employee, nama produk, dan jumlah produk yang dia layani


/*
	Untuk klausa ORDER BY cukup mudah dipahami, sebagaimana namanya klausa ini memiliki fungsi untuk melakukan pengurutan
	secara default ORDER BY adalah ascending atau mengurutkan dari nilai terkecil ke terbesar, dan jika ingin dibalik dapat
	menggunakan DESC atau descending
*/

-- Contoh penggunaan ORDER BY

SELECT *
FROM Employees
ORDER BY FirstName ASC -- Query ini akan menampilkan data employee dengan mengurutkannya dari kecil ke terbesar
					   -- berdasarkan nama depannya
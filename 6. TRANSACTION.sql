/*
	Pada SQL, terdapat konsep yang disebut Transaksi. Transaksi memastikan bahwa serangkaian operasi 
	(misalnya, pemindahan uang antar rekening) terjadi secara terintegrasi. Sebagai contoh, 
	misalkan kita ingin memindahkan uang dari rekening A ke rekening B. Secara algoritma sederhana,
	langkah pertama adalah mengurangi saldo rekening A sesuai jumlah yang akan dipindahkan, kemudian 
	menambahkan jumlah tersebut ke saldo rekening B. Namun, apa yang terjadi jika terdapat masalah
	di tengah proses, sehingga penambahan saldo ke rekening B gagal, sementara pengurangan saldo 
	dari rekening A sudah berhasil? Tentu saja, ini akan merugikan pemilik rekening B.
	Untuk itulah ada Transaksi. Dengan Transaksi, jika ada satu proses yang gagal, maka semua operasi 
	dalam transaksi tersebut akan dikembalikan ke keadaan semula, atau yang dikenal sebagai ROLLBACK. 
	Jika semua operasi berhasil, maka perubahan akan disimpan dan transaksi akan di COMMIT.
*/


-- Contoh penggunaan Transaction

BEGIN TRANSACTION

INSERT INTO PROGRAM_STUDI (NAMA) VALUES ('MATEMATIKA')

ROLLBACK TRANSACTION

SELECT * FROM PROGRAM_STUDI -- Query diatas menyebabkan tabel program_studi tidak memiliki nilai MATEMATIKA karena
							-- Transaksi tersebut di ROLLBACK
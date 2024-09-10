/*
	Sebelumnya kita sudah membuat tabel PROGRAM_STUDI dan MAHASISWA, kali ini kita akan memasukkan, modifikasi, dan menghapus
	data pada tabel tersebut.
*/

-- Contoh memasukkan data dengan Klausa INSERT INTO, untuk memasukkan data dapat dengan rumus berikut
-- INSERT INTO (nama_kolom1, nama_kolom2 dst) VALUES ('nilai_kolom1', 'nilai_kolom2'), untuk kolom yang bersifat auto increment
-- tidak perlu disebutkan dan diisi karena akan terisi secara otomatis

INSERT INTO PROGRAM_STUDI (NAMA) VALUES ('FISIKA'); 
SELECT * FROM PROGRAM_STUDI

/*
	 Contoh penggunaan klausa UPDATE untuk memodifikasi data dalam tabel
	 Sintaks umumnya adalah: UPDATE nama_tabel SET nama_kolom_yang_ingin_diupdate = 'nilai_baru' 
	 WHERE nama_kolom = 'nilai_spesifik' (biasanya id)
	 Penting untuk diingat bahwa klausa WHERE sangat diperlukan. Jika tidak digunakan, 
	 maka semua baris dalam tabel akan terupdate.
*/
UPDATE PROGRAM_STUDI 
SET NAMA = 'MATEMATIKA'
WHERE PROGRAM_STUDI_ID = 1

-- Untuk menghapus data dapat menggunakan Klausa DELETE, Perlu diingat juga bahwa pastikan memiliki kalusa WHERE
-- karena jika tidak maka semua data akan terhapus

DELETE PROGRAM_STUDI
WHERE PROGRAM_STUDI_ID = 1
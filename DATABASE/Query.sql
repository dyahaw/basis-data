select * from JNT_Express;
select * from Cabang;
SELECT * FROM Karyawan;
SELECT * FROM Administrasi;
select * from Pengantaran;
SELECT * FROM Kurir;
SELECT * FROM Pengirim_Barang ;
SELECT * FROM Barang;
SELECT * FROM Penerima_Barang;
SELECT * FROM Tracking;
SELECT * FROM tarif;
SELECT * FROM users;

/*Cari tarif pengiriman min, max dari tabel tarif*/
SELECT MIN(Biaya) AS MIN_biaya, 
	MAX(Biaya) AS MAX_Biaya, 
	AVG(Biaya) AS AVG_Biaya 
FROM Tarif

/*cari top 5 barang yang dikirim*/
select top 5 Deskripsi_Barang, count(Deskripsi_Barang) as jumlah
from Barang
group by Deskripsi_Barang
order by count(Deskripsi_Barang) desc 

/*cari 5 barang yang memiliki berat barang terberat*/
select top 5 * from Barang
order by Berat_Barang desc

/*cari cabang yang melayani pengiriman terbanyak*/
select top 3 Alamat_Pengirim, count(Alamat_Pengirim) as Banyak
from Pengirim_Barang
group by Alamat_Pengirim
order by  count(Alamat_Pengirim)  desc

/*cari data lengkap pengiriman barang*/
SELECT Administrasi.Tanggal_Pengiriman, Pengirim_Barang.Nama_Pengirim, Pengirim_Barang.Alamat_Pengirim, 
	Penerima_Barang.Alamat_Penerima, Penerima_Barang.Nama_Penerima, Administrasi.Total_Biaya, Administrasi.Resi_Barang 
FROM Administrasi
	INNER JOIN Pengirim_Barang ON Administrasi.Resi_Barang = Pengirim_Barang.Resi_Barang
	INNER JOIN Penerima_Barang ON Administrasi.Resi_Barang = Penerima_Barang.Resi_Barang
	INNER JOIN Barang ON Administrasi.Resi_Barang = Barang.Resi_Barang
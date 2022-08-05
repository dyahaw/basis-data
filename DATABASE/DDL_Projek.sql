--create database Projek;
GO
use Projek;
GO

CREATE TABLE JNT_Express (
	Nama_PT VARCHAR(25) NOT NULL PRIMARY KEY,
	Alamat_PT VARCHAR (200) NOT NULL ,
	NoTelp_PT Varchar(15) NOT NULL
);

CREATE TABLE Cabang (
	Kode_Cabang VARCHAR(10) NOT NULL PRIMARY KEY,
	Nama_Cabang VARCHAR(25) NOT NULL  ,
	Alamat_Cabang VARCHAR(200) NOT NULL ,
	NoTelp_Cabang Varchar(15) NOT NULL,
	Jumlah_Karyawan VARCHAR(5) ,
	Nama_PT VARCHAR(25) FOREIGN KEY REFERENCES JNT_EXPRESS
);

CREATE TABLE Karyawan (
	ID VARCHAR(5) NOT NULL PRIMARY KEY,
	Pass VARCHAR(20) NOT NULL, 
	Nama VARCHAR(25) NOT NULL,
	Alamat VARCHAR(50) NOT NULL ,
	Jenis_Kelamin VARCHAR(1)  ,
	Tgl_Lahir VARCHAR(10) ,
	NoHp_Karyawan Varchar(15) ,
	Kode_Cabang VARCHAR(10) FOREIGN KEY REFERENCES Cabang
);

CREATE TABLE Administrasi (
	Resi_Barang VARCHAR(12) PRIMARY KEY,
	ID VARCHAR(5) ,
	Nama_Pengirim VARCHAR(25) NOT NULL ,
	Alamat_Pengirim VARCHAR(200) NOT NULL,
	Tanggal_Pengiriman VARCHAR(10)NOT NULL,
	Total_Biaya INT NOT NULL
);

CREATE TABLE Pengantaran (
	Resi_Barang VARCHAR(12) NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Administrasi,
	Kota_Asal VARCHAR(50),
	Kota_Tujuan VARCHAR(50)
);

CREATE TABLE Kurir (
	ID VARCHAR(5) FOREIGN KEY REFERENCES Karyawan ,
	Nama VARCHAR(25),
	Alamat VARCHAR(200),
	NoHP_Kurir VARCHAR(15),
	Kode_Cabang VARCHAR(10) FOREIGN KEY REFERENCES Cabang ,
	Resi_Barang VARCHAR(12) FOREIGN KEY REFERENCES Administrasi
);

CREATE TABLE Pengirim_Barang (
	Nama_Pengirim VARCHAR(25) NOT NULL,
	Alamat_Pengirim VARCHAR(200) NOT NULL ,
	NoHp_Pengirim VARCHAR(15) NOT NULL PRIMARY KEY,
	Resi_Barang VARCHAR(12) FOREIGN KEY REFERENCES Administrasi 
);

CREATE TABLE Barang (
	Berat_Barang  VARCHAR(5),
	Resi_Barang VARCHAR(12) PRIMARY KEY FOREIGN KEY REFERENCES Administrasi ,
	Dimensi_Barang VARCHAR(20) ,
	Deskripsi_Barang VARCHAR(30)
);

CREATE TABLE Penerima_Barang (
	Nama_Penerima VARCHAR(25) NOT NULL ,
	Alamat_Penerima VARCHAR(200) NOT NULL ,
	NoHP_Penerima VARCHAR(15) NOT NULL,
	Resi_Barang VARCHAR(15)
);


CREATE TABLE Tracking (
	Resi_Barang VARCHAR(12) NOT NULL FOREIGN KEY REFERENCES Administrasi,
	Tanggal_Pengiriman VARCHAR(10)NOT NULL,
	Tanggal_Sampai VARCHAR(10) NOT NULL,
	Posisi_Barang VARCHAR(20) NOT NULL,
	Lama_Pengiriman VARCHAR(10) ,
	Status_Pengantaran VARCHAR(15)
);

CREATE TABLE Tarif (
	Kota_Asal VARCHAR(50),
	Kota_Tujuan VARCHAR(50),
	Biaya NUMERIC(18)
);

CREATE TABLE Users (
	ID INT IDENTITY (5000,1) NOT NULL PRIMARY KEY,
	NoHp_users Varchar(15) NOT NULL ,
	Pass VARCHAR(20) NOT NULL,
	Nama VARCHAR(25) NOT NULL,
	Alamat VARCHAR(50) NOT NULL ,
	Jenis_Kelamin VARCHAR(1),
	Tgl_Lahir VARCHAR(10)
);


--DROP TABLE Users
--DROP TABLE Tarif
--DROP TABLE Tracking
--DROP TABLE Penerima_Barang
--DROP TABLE Barang
--DROP TABLE Pengirim_Barang
--DROP TABLE Kurir
--DROP TABLE Pengantaran
--DROP TABLE Administrasi
--DROP TABLE Karyawan
--DROP TABLE Cabang
--DROP TABLE JNT_Express

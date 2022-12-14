use Projek

DELETE FROM Users;
DELETE FROM Tarif;
DELETE FROM Tracking;
DELETE FROM Penerima_Barang;
DELETE FROM Barang;
DELETE FROM Pengirim_Barang;
DELETE FROM Kurir;
DELETE FROM Pengantaran;
DELETE FROM Administrasi;
DELETE FROM Karyawan;
DELETE FROM Cabang;
DELETE FROM JNT_Express;

INSERT INTO JNT_Express VALUES ('PT. Global Jet Express', 'Landmark Pluit, Kec. Penjaringan, Kota Jakarta Utara' , '02180661888' );
select * from JNT_Express;

INSERT INTO Cabang VALUES ('SDA023',	'J&T SIDOARJO',	'Kec. Sidoarjo, Kabupaten Sidoarjo',	'03199704247',	'12',	'PT. Global Jet Express');
INSERT INTO Cabang VALUES ('MLG112',	'J&T MALANG',	'Kec. Lowokwaru, Kota Malang',	'03199704112',	'15',	'PT. Global Jet Express');
INSERT INTO Cabang VALUES ('BDG345',	'J&T BANDUNG',	'Kec. Cibiru, Kota Bandung',	'0319971345',	'20',	'PT. Global Jet Express');
INSERT INTO Cabang VALUES ('JPR405',	'J&T JEPARA',	'Kec. Jepara, Kabupaten Jepara',	'03119704215',	'10',	'PT. Global Jet Express');
INSERT INTO Cabang VALUES ('SBY108',	'J&T SURABAYA',	'Kec. Gubeng, Kota Surabaya',	'0319911368',	'20',	'PT. Global Jet Express');
INSERT INTO Cabang VALUES ('JOG651',	'J&T YOGYAKARTA',	'Kec. Mantrijeron, Kota Yogyakarta',	'03199115276',	'19',	'PT. Global Jet Express');
INSERT INTO Cabang VALUES ('SBG190',	'J&T SUBANG',	'Kec. Ciasem, Kabupaten Subang',	'03190963891',	'10',	'PT. Global Jet Express');
INSERT INTO Cabang VALUES ('JKT01',		'J&T JAKARTA',	'Kec. Kalideres, Jakarta Barat',	'03191368206',	'30',	'PT. Global Jet Express');
INSERT INTO Cabang VALUES ('PLM12',		'J&T PALEMBANG',	'Kec. Alang-Alang Lebar, Kota Palembang',	'03191264028',	'15',	'PT. Global Jet Express');
INSERT INTO Cabang VALUES ('DPK02',		'J&T DEPOK',	'Kec. Cimanggis, Kota Depok',	'03191905287',	'22',	'PT. Global Jet Express');

select * from Cabang;

INSERT INTO Karyawan VALUES ('1001'	,'123'	, 'Bayu'	, 'Sidoarjo'	, 'L' , '02-01-1992'	, '081134342341'	, 'SDA023');
INSERT INTO Karyawan VALUES ('1002'	,'123'	, 'Angel'	, 'Sidoarjo'	, 'P' , '22-02-1995'	, '082234346641'	, 'SDA023');
INSERT INTO Karyawan VALUES ('2001'	,'123'	, 'Abi'		, 'Sidoarjo'	, 'L' , '12-11-1990'	, '081134342342'	, 'SDA023');
INSERT INTO Karyawan VALUES ('1003'	,'123'	, 'John'	, 'Bandung'		, 'L' , '03-04-1989'	, '081134342343'	, 'BDG345');
INSERT INTO Karyawan VALUES ('1004'	,'123'	, 'Dania'	, 'Bandung'		, 'P', '12-09-1994'		, '081134342322'	, 'BDG345');
INSERT INTO Karyawan VALUES ('2002'	,'123'	, 'Wisnu'	, 'Bandung'		, 'L' , '10-02-1992'	, '081134342344'	, 'BDG345');
INSERT INTO Karyawan VALUES ('1005'	,'123'	, 'Tria'	, 'Depok'		, 'P' , '12-01-1992'	, '081134342345'	, 'DPK02');
INSERT INTO Karyawan VALUES ('1006'	,'123'	, 'Putri'	, 'Depok'		, 'P', '30-12-1995'		, '082213432341'	, 'DPK02');
INSERT INTO Karyawan VALUES ('2003'	,'123'	, 'Anas'	, 'Depok'		, 'L' , '22-11-1992'	, '081134342346'	, 'DPK02');
INSERT INTO Karyawan VALUES ('1007'	,'123'	, 'Dwi'		, 'Jakarta'		, 'P' , '20-08-1993'	, '081134342347'	, 'JKT01');
INSERT INTO Karyawan VALUES ('1008'	,'123'	, 'Kinanti'	, 'Jakarta'		, 'P', '23-08-1993'		, '082134343441'	, 'JKT01');
INSERT INTO Karyawan VALUES ('2004'	,'123'	, 'Isnan'	, 'Jakarta'		, 'L' , '18-05-1990'	, '081134342348'	, 'JKT01');
INSERT INTO Karyawan VALUES ('1009'	,'123'	, 'Budi'	, 'Yogyakarta'	, 'L' , '02-06-1992'	, '081134342349'	, 'JOG651');
INSERT INTO Karyawan VALUES ('1010'	,'123'	, 'Mirna'	, 'Yogyakarta'	, 'P' , '03-09-1990'	, '081134342350'	, 'JOG651');
INSERT INTO Karyawan VALUES ('2005'	,'123'	, 'Ahmad'	, 'Yogyakarta'	, 'L', '01-01-1991'		, '082134341332'	, 'JOG651');
INSERT INTO Karyawan VALUES ('1011'	,'123'	, 'Bisma'	, 'Jepara'		, 'L' , '12-10-1991'	, '081134342351'	, 'JPR405');
INSERT INTO Karyawan VALUES ('1012'	,'123'	, 'Sahila'	, 'Jepara'		, 'P' , '06-11-1995'	, '083134342341'	, 'JPR405');
INSERT INTO Karyawan VALUES ('2006'	,'123'	, 'Paijo'	, 'Jepara'		, 'L' , '01-08-1993'	, '081134342352'	, 'JPR405');
INSERT INTO Karyawan VALUES ('1013'	,'123'	, 'Anya'	, 'Palembang'	, 'P' , '15-03-1994'	, '081134342353'	, 'PLM12');
INSERT INTO Karyawan VALUES ('1014'	,'123'	, 'Adi'		, 'Palembang'	, 'L' , '29-04-1992'	, '081134342354'	, 'PLM12');
INSERT INTO Karyawan VALUES ('2007'	,'123'	, 'Agus'	, 'Palembang'	, 'L', '02-01-1994'		, '081134342341'	, 'PLM12');
INSERT INTO Karyawan VALUES ('1015'	,'123'	, 'Ari'		, 'Subang'		, 'L' , '20-01-1989'	, '081134342355'	, 'SBG190');
INSERT INTO Karyawan VALUES ('1016'	,'123'	, 'Gendis'	, 'Subang'		, 'P' , '17-02-1993'	, '081134349821'	, 'SBG190');
INSERT INTO Karyawan VALUES ('2008'	,'123'	, 'Lukman'	, 'Subang'		, 'L' , '02-02-1992'	, '081134342356'	, 'SBG190');
INSERT INTO Karyawan VALUES ('1017'	,'123'	, 'Winda'	, 'Surabaya'	, 'P' , '27-11-1990'	, '081134342357'	, 'SBY108');
INSERT INTO Karyawan VALUES ('1018'	,'123'	, 'Randy'	, 'Surabaya'	, 'L' , '06-08-1992'	, '081134342358'	, 'SBY108');
INSERT INTO Karyawan VALUES ('2009'	,'123'	, 'Dino'	, 'Surabaya'	, 'L', '04-09-1994'		, '082234212341'	, 'SBY108');
INSERT INTO Karyawan VALUES ('1019'	,'123'	, 'Ratih'	, 'Malang'		, 'P' , '02-05-1992'	, '081134342359'	, 'MLG112');
INSERT INTO Karyawan VALUES ('1020'	,'123'	, 'Bagas'	, 'Malang'		, 'L' , '17-07-1991'	, '081134342360'	, 'MLG112');
INSERT INTO Karyawan VALUES ('2010'	,'123'	, 'Bagus'	, 'Malang'		, 'L' , '04-04-1990'	, '081134346641'	, 'MLG112');
SELECT * FROM Karyawan;

INSERT INTO Administrasi VALUES ('JP1317487425',	'1019', 'TB Makmur'			, 'Malang'		, '10-09-2020', 10000);
INSERT INTO Administrasi VALUES ('JP1317487426',	'1007', 'Oke Shop'			, 'Jakarta'		, '13-09-2020',	27000);
INSERT INTO Administrasi VALUES ('JP1317487427',	'1015', 'Bahrul Ulum'		, 'Subang'		, '14-09-2020',	30000);
INSERT INTO Administrasi VALUES ('JP1317487428',	'1003', 'Geri Salim'		, 'Bandung'		, '21-09-2020',	21000);
INSERT INTO Administrasi VALUES ('JP1317487429',	'1013', 'Mulia Jaya'		, 'Palembang'	, '28-09-2020',	23000);
INSERT INTO Administrasi VALUES ('JP1317487430',	'1005', 'Ahmad Dani'		, 'Depok'		, '03-10-2020', 10000);
INSERT INTO Administrasi VALUES ('JP1317487431',	'1012', 'Rudi Wijaya'		, 'Jepara'		, '04-10-2020', 31000);
INSERT INTO Administrasi VALUES ('JP1317487432',	'1020', 'Taufiq'			, 'Malang'		, '06-10-2020', 23000);
INSERT INTO Administrasi VALUES ('JP1317487433',	'1007', 'Afi Olshop'		, 'Jakarta'		, '06-10-2020', 10000);
INSERT INTO Administrasi VALUES ('JP1317487434',	'1020', 'Junda Wirawan'		, 'Malang'		, '08-10-2020', 22000);
INSERT INTO Administrasi VALUES ('JP1317487435',	'1019', 'Irfan Alwi'		, 'Malang'		, '10-11-2020', 23000);
INSERT INTO Administrasi VALUES ('JP1317487436',	'1019', 'Farah Irma'		, 'Malang'		, '12-08-2020', 22000);
INSERT INTO Administrasi VALUES ('JP1317487437',	'1020', 'Fery Candra'		, 'Malang'		, '12-08-2020', 20000);
INSERT INTO Administrasi VALUES ('JP1317487438',	'1020', 'Bima Andra'		, 'Malang'		, '12-08-2020', 19000);
INSERT INTO Administrasi VALUES ('JP1317487439',	'1019', 'Kristin Reni'		, 'Malang'		, '12-08-2020', 19000);
INSERT INTO Administrasi VALUES ('JP1317487440',	'1008', 'Brily Syahputra'   , 'Jakarta'		, '12-08-2020', 10000);
INSERT INTO Administrasi VALUES ('JP1317487441',	'1008', 'Devina Putri'		, 'Jakarta'		, '13-08-2020', 22000);
INSERT INTO Administrasi VALUES ('JP1317487442',	'1007', 'Dimas Perwira'		, 'Jakarta'		, '12-08-2020', 22000);
INSERT INTO Administrasi VALUES ('JP1317487443',	'1019', 'Cinta Tiara'		, 'Malang'		, '19-08-2020', 21000);
INSERT INTO Administrasi VALUES ('JP1317487444',	'1020', 'Donna Lumba'		, 'Malang'		, '12-08-2020', 20000);
INSERT INTO Administrasi VALUES ('JP1317487445',	'1019', 'Ira Kurnia'		, 'Malang'		, '12-08-2020', 22000);
INSERT INTO Administrasi VALUES ('JP1317487446',	'1015', 'Amelia'			, 'Subang'		, '12-07-2020', 19000);
INSERT INTO Administrasi VALUES ('JP1317487447',	'1008', 'Aisyah'			, 'Jakarta'		, '12-06-2020', 10000);
INSERT INTO Administrasi VALUES ('JP1317487448',	'1019', 'Deanisa'			, 'Malang'		, '12-08-2020', 22000);
INSERT INTO Administrasi VALUES ('JP1317487449',	'2017', 'Verren'			, 'Surabaya'	, '12-05-2020', 19000);
INSERT INTO Administrasi VALUES ('JP1317487450',	'2019', 'Abel Xantika'		, 'Malang'		, '30-08-2020', 10000);
INSERT INTO Administrasi VALUES ('JP1317487451',	'1020', 'Raffi Herman'		, 'Malang'		, '01-02-2020', 23000);
INSERT INTO Administrasi VALUES ('JP1317487452',	'2018', 'Ariadna'			, 'Surabaya'	, '12-11-2020', 10000);
INSERT INTO Administrasi VALUES ('JP1317487453',	'1019', 'Viera'				, 'Malang'		, '25-08-2020', 20000);
INSERT INTO Administrasi VALUES ('JP1317487454',	'1007', 'Vanessa'			, 'Jakarta'		, '12-11-2020', 30000);
INSERT INTO Administrasi VALUES ('JP1317487455',	'1007', 'Iqbal CJR'			, 'Jakarta'		, '12-10-2020', 20000);
INSERT INTO Administrasi VALUES ('JP1317487456',	'1005', 'Syerell'			, 'Depok'		, '29-08-2020', 20000);
INSERT INTO Administrasi VALUES ('JP1317487457',	'1020', 'Ariel'				, 'Malang'		, '02-08-2020', 30000);
INSERT INTO Administrasi VALUES ('JP1317487458',	'1008', 'Tatum'				, 'Jakarta'		,'15-08-2020', 20000);
INSERT INTO Administrasi VALUES ('JP1317487459',	'1008', 'Angel'				, 'Jakarta'		, '18-08-2020', 14000);
INSERT INTO Administrasi VALUES ('JP1317487460',	'1005', 'Tasya'				, 'Depok'		, '11-08-2020', 19000);
INSERT INTO Administrasi VALUES ('JP1317487461',	'2017', 'aldi'				, 'Surabaya'	, '12-10-2020', 22000);
INSERT INTO Administrasi VALUES ('JP1317487462',	'2018', 'Aldo'				, 'Surabaya'	, '12-11-2020', 19000);
INSERT INTO Administrasi VALUES ('JP1317487463',	'2018', 'Nova'				, 'Surabaya'	, '12-09-2020', 19000);
INSERT INTO Administrasi VALUES ('JP1317487464',	'2018', 'Vera'				, 'Surabaya'	, '12-08-2020', 20000);
SELECT * FROM Administrasi;

INSERT INTO Pengantaran VALUES ('JP1317487425', 	'Malang'		, 'Surabaya');
INSERT INTO Pengantaran VALUES ('JP1317487426', 	'Jakarta'		, 'Jepara');
INSERT INTO Pengantaran VALUES ('JP1317487427', 	'Subang'		, 'Yogyakarta');
INSERT INTO Pengantaran VALUES ('JP1317487428', 	'Bandung'		, 'Surabaya');
INSERT INTO Pengantaran VALUES ('JP1317487429', 	'Palembang'		, 'Malang');
INSERT INTO Pengantaran VALUES ('JP1317487430', 	'Depok'			, 'Malang');
INSERT INTO Pengantaran VALUES ('JP1317487431', 	'Jepara'		, 'Surabaya');
INSERT INTO Pengantaran VALUES ('JP1317487432', 	'Malang'		, 'Jakarta');
INSERT INTO Pengantaran VALUES ('JP1317487433', 	'Jakarta'		, 'Depok');
INSERT INTO Pengantaran VALUES ('JP1317487434', 	'Malang'		, 'Subang');
INSERT INTO Pengantaran VALUES ('JP1317487435', 	'Malang'		, 'Jakarta');
INSERT INTO Pengantaran VALUES ('JP1317487436', 	'Malang'		, 'Surabaya');
INSERT INTO Pengantaran VALUES ('JP1317487437', 	'Malang'		, 'Depok');
INSERT INTO Pengantaran VALUES ('JP1317487438', 	'Malang'		, 'Jakarta');
INSERT INTO Pengantaran VALUES ('JP1317487439', 	'Malang'		, 'Depok');
INSERT INTO Pengantaran VALUES ('JP1317487440', 	'Jakarta'		, 'Surabaya');
INSERT INTO Pengantaran VALUES ('JP1317487441', 	'Jakarta'		, 'Sleman');
INSERT INTO Pengantaran VALUES ('JP1317487442', 	'Jakarta'		, 'Sidoarjo');
INSERT INTO Pengantaran VALUES ('JP1317487443', 	'Malang'		, 'Sidoarjo');
INSERT INTO Pengantaran VALUES ('JP1317487444', 	'Malang'		, 'Depok');
INSERT INTO Pengantaran VALUES ('JP1317487445', 	'Malang'		, 'Depok');
INSERT INTO Pengantaran VALUES ('JP1317487446', 	'Subang'		, 'Sleman');
INSERT INTO Pengantaran VALUES ('JP1317487447', 	'Jakarta'		, 'Surabaya');
INSERT INTO Pengantaran VALUES ('JP1317487448', 	'Malang'		, 'Depok');
INSERT INTO Pengantaran VALUES ('JP1317487449', 	'Surabaya'		, 'Depok');
INSERT INTO Pengantaran VALUES ('JP1317487450', 	'Malang'		, 'Surabaya');
INSERT INTO Pengantaran VALUES ('JP1317487451', 	'Malang'		, 'Depok');
INSERT INTO Pengantaran VALUES ('JP1317487452', 	'Surabaya'		, 'Subang');
INSERT INTO Pengantaran VALUES ('JP1317487453', 	'Malang'		, 'Surabaya');
INSERT INTO Pengantaran VALUES ('JP1317487454', 	'Jakarta'		, 'Malang');
INSERT INTO Pengantaran VALUES ('JP1317487455',		'Jakarta'		, 'Depok');
INSERT INTO Pengantaran VALUES ('JP1317487456', 	'Depok'			, 'Subang');
INSERT INTO Pengantaran VALUES ('JP1317487457', 	'Malang'		, 'Malang');
INSERT INTO Pengantaran VALUES ('JP1317487458', 	'Jakarta'		, 'Surabaya');
INSERT INTO Pengantaran VALUES ('JP1317487459', 	'Jakarta'		, 'Jakarta');
INSERT INTO Pengantaran VALUES ('JP1317487460', 	'Depok'			, 'Surabaya');
INSERT INTO Pengantaran VALUES ('JP1317487461', 	'Malang'		, 'Depok');
INSERT INTO Pengantaran VALUES ('JP1317487462', 	'Surabaya'		, 'Depok');
INSERT INTO Pengantaran VALUES ('JP1317487463', 	'Surabaya'		, 'Depok');
INSERT INTO Pengantaran VALUES ('JP1317487464', 	'Surabaya'		, 'Jakarta');
select * from Pengantaran;

INSERT INTO Kurir VALUES ('2009'	, 'Dino'	, 'Surabaya'	,  '082234212341'	,	'SBY108'	, 'JP1317487425');
INSERT INTO Kurir VALUES ('2006'	, 'Paijo'	, 'Jepara'		, '081134342352'	,	'JPR405'	, 'JP1317487426');
INSERT INTO Kurir VALUES ('2005'	, 'Ahmad'	, 'Yogyakarta'	, '082134341332'	,	'JOG651'	, 'JP1317487427');
INSERT INTO Kurir VALUES ('2009'	, 'Dino'	, 'Surabaya'	,  '082234212341'	,	'SBY108'	, 'JP1317487428');
INSERT INTO Kurir VALUES ('2010'	, 'Bagus'	, 'Malang'		, '081134346641'	,	'MLG112'	, 'JP1317487429');
INSERT INTO Kurir VALUES ('2010'	, 'Bagus'	, 'Malang'		,  '081134346641'	,	'MLG112'	, 'JP1317487430');
INSERT INTO Kurir VALUES ('2009'	, 'Dino'	, 'Surabaya'	,  '082234212341'	,	'SBY108'	, 'JP1317487431');
INSERT INTO Kurir VALUES ('2004'	, 'Isnan'	, 'Jakarta'		, '081134342348'	,	'JKT01'		, 'JP1317487432');
INSERT INTO Kurir VALUES ('2003'	, 'Anas'	, 'Depok'		, '081134342346'	,	'DPK02'		, 'JP1317487433');
INSERT INTO Kurir VALUES ('2008'	, 'Lukman'	, 'Subang'		, '081134342356'	,	'SBG190'	, 'JP1317487434');
INSERT INTO Kurir VALUES ('2004'	, 'Isnan'	, 'Jakarta'		, '081134342348'	,	'JKT01'		, 'JP1317487435');
INSERT INTO Kurir VALUES ('2009'	, 'Dino'	, 'Surabaya'	,  '082234212341'	,	'SBY108'	, 'JP1317487436');
INSERT INTO Kurir VALUES ('2003'	, 'Anas'	, 'Depok'		, '081134342346'	,	'DPK02'		, 'JP1317487437');
INSERT INTO Kurir VALUES ('2004'	, 'Isnan'	, 'Jakarta'		, '081134342348'	,	'JKT01'		, 'JP1317487438');
INSERT INTO Kurir VALUES ('2003'	, 'Anas'	, 'Depok'		, '081134342346'	,	'DPK02'		, 'JP1317487439');
INSERT INTO Kurir VALUES ('2009'	, 'Dino'	, 'Surabaya'	,  '082234212341'	,	'SBY108'	, 'JP1317487440');
INSERT INTO Kurir VALUES ('2005'	, 'Ahmad'	, 'Sleman'		, '082134341332'	,	'JOG651'	, 'JP1317487441');
INSERT INTO Kurir VALUES ('2001'	, 'Abi'		, 'Sidoarjo'	, '081134342342'	,	'SDA023'	, 'JP1317487442');
INSERT INTO Kurir VALUES ('2001'	, 'Abi'		, 'Sidoarjo'	, '081134342342'	,	'SDA023'	, 'JP1317487443');
INSERT INTO Kurir VALUES ('2003'	, 'Anas'	, 'Depok'		, '081134342346'	,	'DPK02'		, 'JP1317487444');
INSERT INTO Kurir VALUES ('2003'	, 'Anas'	, 'Depok'		, '081134342346'	,	'DPK02'		, 'JP1317487445');
INSERT INTO Kurir VALUES ('2005'	, 'Ahmad'	, 'Sleman'		, '082134341332'	,	'JOG651'	, 'JP1317487446');
INSERT INTO Kurir VALUES ('2009'	, 'Dino'	, 'Surabaya'	, '082234212341'	,	'SBY108'	, 'JP1317487447');
INSERT INTO Kurir VALUES ('2003'	, 'Anas'	, 'Depok'		, '081134342346'	,	'DPK02'		, 'JP1317487448');
INSERT INTO Kurir VALUES ('2003'	, 'Anas'	, 'Depok'		, '081134342346'	,	'DPK02'		, 'JP1317487449');
INSERT INTO Kurir VALUES ('2009'	, 'Dino'	, 'Surabaya'	, '082234212341'	,	'SBY108'	, 'JP1317487450');
INSERT INTO Kurir VALUES ('2003'	, 'Anas'	, 'Depok'		, '081134342346'	,	'DPK02'		, 'JP1317487451');
INSERT INTO Kurir VALUES ('2008'	, 'Lukman'	, 'Subang'		, '081134342356'	,	'SBG190'	, 'JP1317487452');
INSERT INTO Kurir VALUES ('2009'	, 'Dino'	, 'Surabaya'	, '082234212341'	,	'SBY108'	, 'JP1317487453');
INSERT INTO Kurir VALUES ('2010'	, 'Bagus'	, 'Malang'		, '081134346641'	,	'MLG112'	, 'JP1317487454');
INSERT INTO Kurir VALUES ('2003'	, 'Anas'	, 'Depok'		, '081134342346'	,	'DPK02'		, 'JP1317487455');
INSERT INTO Kurir VALUES ('2008'	, 'Lukman'	, 'Subang'		, '081134342356'	,	'SBG190'	, 'JP1317487456');
INSERT INTO Kurir VALUES ('2010'	, 'Bagus'	, 'Malang'		, '081134346641'	,	'MLG112'	, 'JP1317487457');
INSERT INTO Kurir VALUES ('2009'	, 'Dino'	, 'Surabaya'	, '082234212341'	,	'SBY108'	, 'JP1317487458');
INSERT INTO Kurir VALUES ('2004'	, 'Isnan'	, 'Jakarta'		, '081134342348'	,	'JKT01'		, 'JP1317487459');
INSERT INTO Kurir VALUES ('2009'	, 'Dino'	, 'Surabaya'	, '082234212341'	,	'SBY108'	, 'JP1317487460');
INSERT INTO Kurir VALUES ('2003'	, 'Anas'	, 'Depok'		, '081134342346'	,	'DPK02'		, 'JP1317487461');
INSERT INTO Kurir VALUES ('2003'	, 'Anas'	, 'Depok'		, '081134342346'	,	'DPK02'		, 'JP1317487462');
INSERT INTO Kurir VALUES ('2003'	, 'Anas'	, 'Depok'		, '081134342346'	,	'DPK02'		, 'JP1317487463');
INSERT INTO Kurir VALUES ('2004'	, 'Isnan'	, 'Jakarta'		, '081134342348'	,	'JKT01'		, 'JP1317487464');
SELECT * FROM Kurir;
												
INSERT INTO Pengirim_Barang VALUES ('TB Makmur',		'Malang', '085109690000', 'JP1317487425');
INSERT INTO Pengirim_Barang VALUES ('Oke Shop',			'Jakarta', '082211223476', 'JP1317487426');
INSERT INTO Pengirim_Barang VALUES ('Bahrul Ulum',		'Subang', '083678690100', 'JP1317487427');
INSERT INTO Pengirim_Barang VALUES ('Geri Salim',		'Bandung', '082131296011', 'JP1317487428');
INSERT INTO Pengirim_Barang VALUES ('Mulia Jaya',		'Palembang', '085759690120', 'JP1317487429');
INSERT INTO Pengirim_Barang VALUES ('Ahmad Dani',		'Depok', '089109690230', 'JP1317487430');
INSERT INTO Pengirim_Barang VALUES ('Rudi WIjaya',		'Jepara', '089230960780', 'JP1317487431');
INSERT INTO Pengirim_Barang VALUES ('Taufiq',			'Malang', '085134590111', 'JP1317487432');
INSERT INTO Pengirim_Barang VALUES ('Afi Olshop',		'Jakarta', '082231214456', 'JP1317487433');
INSERT INTO Pengirim_Barang VALUES ('Junda Wirawan',	'Malang', '081231224588', 'JP1317487434');
INSERT INTO Pengirim_Barang VALUES ('Irfan Alwi',		'Malang', '081231224581', 'JP1317487435');
INSERT INTO Pengirim_Barang VALUES ('Farah Irma',		'Malang', '081231224582', 'JP1317487436');
INSERT INTO Pengirim_Barang VALUES ('Fery Candra',		'Malang', '081231224583', 'JP1317487437');
INSERT INTO Pengirim_Barang VALUES ('Bima Andra',		'Malang', '081231224584', 'JP1317487438');
INSERT INTO Pengirim_Barang VALUES ('Kristin Reni',		'Malang', '081231224585', 'JP1317487439');
INSERT INTO Pengirim_Barang VALUES ('Brily Syahputra',	'Jakarta', '081231224586', 'JP1317487440');
INSERT INTO Pengirim_Barang VALUES ('Devina Putri',		'Jakarta', '081231224587', 'JP1317487441');
INSERT INTO Pengirim_Barang VALUES ('Dimas Perwira',	'Jakarta', '081231224589', 'JP1317487442');
INSERT INTO Pengirim_Barang VALUES ('Cinta Tiara',		'Malang', '081231224590', 'JP1317487443');
INSERT INTO Pengirim_Barang VALUES ('Donna Lumba',		'Malang', '081231224591', 'JP1317487444');
INSERT INTO Pengirim_Barang VALUES ('Ira Kumia',		'Malang', '081231224592', 'JP1317487445');
INSERT INTO Pengirim_Barang VALUES ('Amelia' ,			'Subang', '081231224593', 'JP1317487446');
INSERT INTO Pengirim_Barang VALUES ('Aisyah',			'Jakarta', '081231224594', 'JP1317487447');
INSERT INTO Pengirim_Barang VALUES ('Deanisa',			'Malang', '081231224595', 'JP1317487448');
INSERT INTO Pengirim_Barang VALUES ('Verren',			'Surabaya', '081231224596', 'JP1317487449');
INSERT INTO Pengirim_Barang VALUES ('Abel Xantika',		'Malang', '081231224597', 'JP1317487450');
INSERT INTO Pengirim_Barang VALUES ('Raffi Herman',		'Malang', '081231224598', 'JP1317487451');
INSERT INTO Pengirim_Barang VALUES ('Ariadna',			'Surabaya', '081231224599', 'JP1317487452');
INSERT INTO Pengirim_Barang VALUES ('Viera',			'Malang', '081231224501', 'JP1317487453');
INSERT INTO Pengirim_Barang VALUES ('Vanessa',			'Jakarta', '081231224502', 'JP1317487454');
INSERT INTO Pengirim_Barang VALUES ('Iqbal CJR',		'Jakarta', '081231224503', 'JP1317487455');
INSERT INTO Pengirim_Barang VALUES ('Syerrel',			'Depok', '081231224504', 'JP1317487456');
INSERT INTO Pengirim_Barang VALUES ('Ariel',			'Malang', '081231224505', 'JP1317487457');
INSERT INTO Pengirim_Barang VALUES ('Tatum',			'Jakarta', '081231224506', 'JP1317487458');
INSERT INTO Pengirim_Barang VALUES ('Angel',			'Jakarta', '081231224507', 'JP1317487459');
INSERT INTO Pengirim_Barang VALUES ('Tasya',			'Depok', '081231224508', 'JP1317487460');
INSERT INTO Pengirim_Barang VALUES ('aldi',				'Surabaya', '081231224509', 'JP1317487461')
INSERT INTO Pengirim_Barang VALUES ('Aldo',				'Surabaya', '081231224510', 'JP1317487462');
INSERT INTO Pengirim_Barang VALUES ('Nova',				'Surabaya', '081231224511', 'JP1317487463');
INSERT INTO Pengirim_Barang VALUES ('Vera',				'Surabaya', '081231224512', 'JP1317487464');
SELECT * FROM Pengirim_Barang ;

INSERT INTO Barang VALUES ('3 kg', 'JP1317487425',	'45*30*15',		'LAPTOP') ;
INSERT INTO Barang VALUES ('1 kg', 'JP1317487426',	'20*15*5',		'Pakaian') ;
INSERT INTO Barang VALUES ('1 kg', 'JP1317487427',	'15*10*5',		'Handphone') ;
INSERT INTO Barang VALUES ('2 kg', 'JP1317487428',	'40*20*10',		'Sepatu') ;
INSERT INTO Barang VALUES ('1 kg', 'JP1317487429',	'15*10*8',		'Ikan') ;
INSERT INTO Barang VALUES ('3 kg', 'JP1317487430',	'40*25*15',		'LAPTOP') ;
INSERT INTO Barang VALUES ('1 kg', 'JP1317487431',	'20*10*5',		'Buku') ;
INSERT INTO Barang VALUES ('1 kg', 'JP1317487432',	'25*10*3',		'Bantal') ;
INSERT INTO Barang VALUES ('8 kg', 'JP1317487433',	'25*20*20',		'Alat Olahraga') ;
INSERT INTO Barang VALUES ('8 kg', 'JP1317487434',	'50*45*20',		'Kipas Angin') ;
INSERT INTO Barang VALUES ('3 kg', 'JP1317487435',	'40*25*15',		'LAPTOP ');
INSERT INTO Barang VALUES ('3 kg', 'JP1317487436',	'40*25*15',		'LAPTOP ');
INSERT INTO Barang VALUES ('2 kg', 'JP1317487437',	'15*25*30',		'Pakaian');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487438',	'17*10*10',		'Sepatu ');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487439',	'15*10*8',		'Tas ');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487440',	'10*15*10',		'Tas');
INSERT INTO Barang VALUES ('3 kg', 'JP1317487441',	'40*25*15',		'LAPTOP ');
INSERT INTO Barang VALUES ('2 kg', 'JP1317487442',	'25*10*15',		'Sepatu ');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487443',	'10*15*15',		'Pakaian ');
INSERT INTO Barang VALUES ('2 kg', 'JP1317487444',	'50*30*25',		'Meja');
INSERT INTO Barang VALUES ('2 kg', 'JP1317487445',	'32*10*14',		'Alat Olahraga');
INSERT INTO Barang VALUES ('2 kg', 'JP1317487446',	'32*10*14',		'Alat Olahraga');
INSERT INTO Barang VALUES ('3 kg', 'JP1317487447',	'30*20*14',		'Beras');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487448',	'10*10*14',		'Pakaian');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487449',	'10*10*14',		'Pakaian');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487450',	'10*10*14',		'Pakaian');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487451',	'10*10*14',		'Pakaian');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487452',	'10*10*14',		'Pakaian');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487453',	'10*10*14',		'Pakaian');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487454',	'10*10*14',		'Pakaian');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487455',	'10*10*14',		'Pakaian');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487456',	'15*10*14',		'Tas');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487457',	'15*10*14',		'Tas');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487458',	'15*10*14',		'Tas');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487459',	'15*10*14',		'Tas');
INSERT INTO Barang VALUES ('1 kg', 'JP1317487460',	'15*10*14',		'Tas');
INSERT INTO Barang VALUES ('2 kg', 'JP1317487461',	'21*11*15',		'Sepatu');
INSERT INTO Barang VALUES ('2 kg', 'JP1317487462',	'21*11*15',		'Sepatu');
INSERT INTO Barang VALUES ('2 kg', 'JP1317487463',	'21*11*15',		'Sepatu');
INSERT INTO Barang VALUES ('2 kg', 'JP1317487464',	'21*11*15',		'Sepatu');
SELECT * FROM Barang
									
INSERT INTO Penerima_Barang VALUES ('Hendra',	'Surabaya', '081231123113', 'JP1317487425');
INSERT INTO Penerima_Barang VALUES ('Didi',		'Jepara', '081231123122', 'JP1317487426');
INSERT INTO Penerima_Barang VALUES ('Nono',		'Yogyakarta', '085331123555', 'JP1317487427');
INSERT INTO Penerima_Barang VALUES ('Lala',		'Surabaya', '085631115544', 'JP1317487428');
INSERT INTO Penerima_Barang VALUES ('Gren',		'Malang', '085731115500', 'JP1317487429');
INSERT INTO Penerima_Barang VALUES ('Dika',		'Malang', '085831234567', 'JP1317487430');
INSERT INTO Penerima_Barang VALUES ('Saktian',	'Surabaya', '082231264588', 'JP1317487431');
INSERT INTO Penerima_Barang VALUES ('Rendy',	'Jakarta', '082331265499', 'JP1317487432');
INSERT INTO Penerima_Barang VALUES ('Muezza',	'Depok', '083331275500', 'JP1317487433');
INSERT INTO Penerima_Barang VALUES ('Inaya',	'Subang', '083441266473', 'JP1317487434');
INSERT INTO Penerima_Barang VALUES ('Fina',		'Jakarta', '083441266472', 'JP1317487435');
INSERT INTO Penerima_Barang VALUES ('Della',	'Surabaya', '083441266471', 'JP1317487436');
INSERT INTO Penerima_Barang VALUES ('Taya',		'Depok', '083441266470', 'JP1317487437');
INSERT INTO Penerima_Barang VALUES ('Kelvin',	'Jakarta', '083441266489', 'JP1317487438');
INSERT INTO Penerima_Barang VALUES ('Rafi',		'Depok', '083441266488', 'JP1317487439');
INSERT INTO Penerima_Barang VALUES ('Ali',		'Surabaya', '083441266487', 'JP1317487440');
INSERT INTO Penerima_Barang VALUES ('Benz',		'Sleman', '083441266485', 'JP1317487441');
INSERT INTO Penerima_Barang VALUES ('Rava',		'Sidoarjo', '083441266484', 'JP1317487442');
INSERT INTO Penerima_Barang VALUES ('Andre',	'Sidoarjo', '083441266483', 'JP1317487443');
INSERT INTO Penerima_Barang VALUES ('Jon',		'Depok', '083441266482', 'JP1317487444');
INSERT INTO Penerima_Barang VALUES ('Nathan',	'Depok', '083441266481', 'JP1317487445');
INSERT INTO Penerima_Barang VALUES ('Indah',	'Sleman', '083441266482', 'JP1317487446');
INSERT INTO Penerima_Barang VALUES ('Ana',		'Surabaya', '083441266483', 'JP1317487447');
INSERT INTO Penerima_Barang VALUES ('Nizam',	'Depok', '083441266484', 'JP1317487448');
INSERT INTO Penerima_Barang VALUES ('Azriel',	'Depok', '083441266485', 'JP1317487449');
INSERT INTO Penerima_Barang VALUES ('Tandi',	'Surabaya', '083441266486', 'JP1317487450');
INSERT INTO Penerima_Barang VALUES ('Arsy',		'Depok', '083441266487', 'JP1317487451');
INSERT INTO Penerima_Barang VALUES ('Arsya',	'Subang', '083441266488', 'JP1317487452');
INSERT INTO Penerima_Barang VALUES ('Ben',		'Surabaya', '083441266489', 'JP1317487453');
INSERT INTO Penerima_Barang VALUES ('Ani',		'Malang', '083441266490', 'JP1317487454');
INSERT INTO Penerima_Barang VALUES ('Melan',	'Depok', '083441266491', 'JP1317487455');
INSERT INTO Penerima_Barang VALUES ('Rose',		'Subang', '083441266492', 'JP1317487456');
INSERT INTO Penerima_Barang VALUES ('Yoan',		'Malang', '083441266493', 'JP1317487457');
INSERT INTO Penerima_Barang VALUES ('Aziz',		'Surabaya', '083441266494', 'JP1317487458');
INSERT INTO Penerima_Barang VALUES ('Arifin',	'Jakarta', '083441266495', 'JP1317487459');
INSERT INTO Penerima_Barang VALUES ('Zein',		'Surabaya', '083441266496', 'JP1317487460');
INSERT INTO Penerima_Barang VALUES ('Aza',		'Depok', '083441266497', 'JP1317487461');
INSERT INTO Penerima_Barang VALUES ('Zahra',	'Depok', '083441266498', 'JP1317487462');
INSERT INTO Penerima_Barang VALUES ('Bila',		'Depok', '083441266499', 'JP1317487463');
INSERT INTO Penerima_Barang VALUES ('Chava',	'Jakarta', '083441266401', 'JP1317487466');

SELECT * FROM Penerima_Barang;

INSERT INTO Tracking VALUES ('JP1317487425',	'10-09-2020',	'11-10-2020',	'Surabaya',	'1 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487426',	'13-09-2020',	'16-09-2020',	'Jepara',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487427',	'14-09-2020',	'16-10-2020',	'Yogyakarta',	'2 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487428',	'21-09-2020',	'24-10-2020',	'Surabaya',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487429',	'28-09-2020',	'01-10-2020',	'Malang',	'4 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487430',	'03-10-2020',	'06-10-2020',	'Malang',		'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487431',	'04-10-2020',	'06-10-2020',	'Surabaya',	'2 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487432',	'06-10-2020',	'09-10-2020',	'Jakarta',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487433',	'06-10-2020',	'07-10-2020',	'Depok',	'1 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487434',	'08-10-2020',	'06-10-2020',	'Subang',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487435',	'10-11-2020',	'13-11-2020',	'Jakarta',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487436',	'12-08-2020',	'13-08-2020',	'Surabaya',	'1 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487437',	'12-08-2020',	'15-08-2020',	'Depok',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487438',	'12-08-2020',	'15-08-2020',	'Jakarta',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487439',	'12-08-2020',	'15-08-2020',	'Depok',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487440',	'12-08-2020',	'15-08-2020',	'Surabaya',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487441',	'13-08-2020',	'15-08-2020',	'Sleman',	'2 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487442',	'12-08-2020',	'15-08-2020',	'Sidoarjo',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487443',	'19-08-2020',	'20-08-2020',	'Sidoarjo',	'1 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487444',	'12-08-2020',	'15-08-2020',	'Depok',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487445',	'12-08-2020',	'15-08-2020',	'Depok',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487446',	'12-07-2020',	'15-07-2020',	'Sleman',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487447',	'12-06-2020',	'15-06-2020',	'Surabaya',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487448',	'12-08-2020',	'15-08-2020',	'Depok',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487449',	'12-05-2020',	'15-05-2020',	'Depok',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487450',	'30-08-2020',	'03-09-2020',	'Surabaya',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487451',	'01-02-2020',	'04-02-2020',	'Depok',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487452',	'12-11-2020',	'15-11-2020',	'Subang',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487453',	'25-08-2020',	'28-08-2020',	'Surabaya',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487454',	'12-11-2020',	'15-11-2020',	'Malang',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487455',	'12-10-2020',	'15-10-2020',	'Depok',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487456',	'29-08-2020',	'01-09-2020',	'Subang',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487457',	'02-08-2020',	'05-08-2020',	'Malang',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487458',	'15-08-2020',	'18-08-2020',	'Surabaya',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487459',	'18-08-2020',	'21-08-2020',	'Jakarta',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487460',	'11-08-2020',	'14-08-2020',	'Surabaya',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487461',	'12-10-2020',	'15-10-2020',	'Depok',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487462',	'12-11-2020',	'15-11-2020',	'Depok',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487463',	'12-09-2020',	'15-09-2020',	'Depok',	'3 hari',	'Diterima');
INSERT INTO Tracking VALUES ('JP1317487464',	'12-08-2020',	'15-08-2020',	'Jakarta',	'3 hari',	'Diterima');
SELECT * FROM Tracking;


INSERT INTO tarif VALUES ('BANDUNG', 'BANDUNG', 14000);
INSERT INTO tarif VALUES ('BANDUNG', 'DEPOK', 14000);
INSERT INTO tarif VALUES ('BANDUNG', 'JAKARTA', 14000);
INSERT INTO tarif VALUES ('BANDUNG', 'YOGYAKARTA', 19000);
INSERT INTO tarif VALUES ('BANDUNG', 'JEPARA', 25000);
INSERT INTO tarif VALUES ('BANDUNG', 'MALANG', 25000);
INSERT INTO tarif VALUES ('BANDUNG', 'PALEMBANG', 25000);
INSERT INTO tarif VALUES ('BANDUNG', 'SUBANG', 16000);
INSERT INTO tarif VALUES ('BANDUNG', 'SURABAYA', 21000);
INSERT INTO tarif VALUES ('BANDUNG', 'SIDOARJO', 21000);
INSERT INTO tarif VALUES ('DEPOK', 'BANDUNG', 14000);
INSERT INTO tarif VALUES ('DEPOK', 'DEPOK', 14000);
INSERT INTO tarif VALUES ('DEPOK', 'JAKARTA', 10000);
INSERT INTO tarif VALUES ('DEPOK', 'YOGYAKARTA', 18000);
INSERT INTO tarif VALUES ('DEPOK', 'JEPARA', 27000);
INSERT INTO tarif VALUES ('DEPOK', 'MALANG', 22000);
INSERT INTO tarif VALUES ('DEPOK', 'PALEMBANG', 25000);
INSERT INTO tarif VALUES ('DEPOK', 'SUBANG', 20000);
INSERT INTO tarif VALUES ('DEPOK', 'SURABAYA', 19000);
INSERT INTO tarif VALUES ('DEPOK', 'SIDOARJO', 22000);
INSERT INTO tarif VALUES ('JAKARTA', 'BANDUNG', 14000);
INSERT INTO tarif VALUES ('JAKARTA', 'DEPOK', 10000);
INSERT INTO tarif VALUES ('JAKARTA', 'JAKARTA', 14000);
INSERT INTO tarif VALUES ('JAKARTA', 'YOGYAKARTA', 19000);
INSERT INTO tarif VALUES ('JAKARTA', 'JEPARA', 27000);
INSERT INTO tarif VALUES ('JAKARTA', 'MALANG', 23000);
INSERT INTO tarif VALUES ('JAKARTA', 'PALEMBANG', 25000);
INSERT INTO tarif VALUES ('JAKARTA', 'SUBANG', 20000);
INSERT INTO tarif VALUES ('JAKARTA', 'SURABAYA', 20000);
INSERT INTO tarif VALUES ('JAKARTA', 'SIDOARJO', 19000);
INSERT INTO tarif VALUES ('YOGYAKARTA', 'BANDUNG', 19000);
INSERT INTO tarif VALUES ('YOGYAKARTA', 'DEPOK', 18000);
INSERT INTO tarif VALUES ('YOGYAKARTA', 'JAKARTA', 19000);
INSERT INTO tarif VALUES ('YOGYAKARTA', 'YOGYAKARTA', 19000);
INSERT INTO tarif VALUES ('YOGYAKARTA', 'JEPARA', 16000);
INSERT INTO tarif VALUES ('YOGYAKARTA', 'MALANG', 28000);
INSERT INTO tarif VALUES ('YOGYAKARTA', 'PALEMBANG', 35000);
INSERT INTO tarif VALUES ('YOGYAKARTA', 'SUBANG', 30000);
INSERT INTO tarif VALUES ('YOGYAKARTA', 'SURABAYA', 23000);
INSERT INTO tarif VALUES ('YOGYAKARTA', 'SIDOARJO', 23000);
INSERT INTO tarif VALUES ('JEPARA', 'BANDUNG', 25000);
INSERT INTO tarif VALUES ('JEPARA', 'DEPOK', 27000);
INSERT INTO tarif VALUES ('JEPARA', 'JAKARTA', 27000);
INSERT INTO tarif VALUES ('JEPARA', 'YOGYAKARTA', 16000);
INSERT INTO tarif VALUES ('JEPARA', 'JEPARA', 16000);
INSERT INTO tarif VALUES ('JEPARA', 'MALANG', 30000);
INSERT INTO tarif VALUES ('JEPARA', 'PALEMBANG', 35000);
INSERT INTO tarif VALUES ('JEPARA', 'SUBANG', 29000);
INSERT INTO tarif VALUES ('JEPARA', 'SURABAYA', 22000);
INSERT INTO tarif VALUES ('JEPARA', 'SIDOARJO', 29000);
INSERT INTO tarif VALUES ('MALANG', 'BANDUNG', 25000);
INSERT INTO tarif VALUES ('MALANG', 'DEPOK', 22000);
INSERT INTO tarif VALUES ('MALANG', 'JAKARTA', 23000);
INSERT INTO tarif VALUES ('MALANG', 'YOGYAKARTA', 28000);
INSERT INTO tarif VALUES ('MALANG', 'JEPARA', 30000);
INSERT INTO tarif VALUES ('MALANG', 'MALANG', 30000);
INSERT INTO tarif VALUES ('MALANG', 'PALEMBANG', 31000);
INSERT INTO tarif VALUES ('MALANG', 'SUBANG', 31000);
INSERT INTO tarif VALUES ('MALANG', 'SURABAYA', 10000);
INSERT INTO tarif VALUES ('MALANG', 'SIDOARJO', 10000);
INSERT INTO tarif VALUES ('PALEMBANG', 'BANDUNG', 25000);
INSERT INTO tarif VALUES ('PALEMBANG', 'DEPOK', 25000);
INSERT INTO tarif VALUES ('PALEMBANG', 'JAKARTA', 25000);
INSERT INTO tarif VALUES ('PALEMBANG', 'YOGYAKARTA', 35000);
INSERT INTO tarif VALUES ('PALEMBANG', 'JEPARA', 35000);
INSERT INTO tarif VALUES ('PALEMBANG', 'MALANG', 31000);
INSERT INTO tarif VALUES ('PALEMBANG', 'PALEMBANG', 31000);
INSERT INTO tarif VALUES ('PALEMBANG', 'SUBANG', 33000);
INSERT INTO tarif VALUES ('PALEMBANG', 'SURABAYA', 30000);
INSERT INTO tarif VALUES ('PALEMBANG', 'SIDOARJO', 27000);
INSERT INTO tarif VALUES ('SUBANG', 'BANDUNG', 16000);
INSERT INTO tarif VALUES ('SUBANG', 'DEPOK', 20000);
INSERT INTO tarif VALUES ('SUBANG', 'JAKARTA', 20000);
INSERT INTO tarif VALUES ('SUBANG', 'YOGYAKARTA', 30000);
INSERT INTO tarif VALUES ('SUBANG', 'JEPARA', 29000);
INSERT INTO tarif VALUES ('SUBANG', 'MALANG', 31000);
INSERT INTO tarif VALUES ('SUBANG', 'PALEMBANG', 33000);
INSERT INTO tarif VALUES ('SUBANG', 'SUBANG', 33000);
INSERT INTO tarif VALUES ('SUBANG', 'SURABAYA', 21000);
INSERT INTO tarif VALUES ('SUBANG', 'SIDOARJO', 21000);
INSERT INTO tarif VALUES ('SURABAYA', 'BANDUNG', 21000);
INSERT INTO tarif VALUES ('SURABAYA', 'DEPOK', 19000);
INSERT INTO tarif VALUES ('SURABAYA', 'JAKARTA', 20000);
INSERT INTO tarif VALUES ('SURABAYA', 'YOGYAKARTA', 23000);
INSERT INTO tarif VALUES ('SURABAYA', 'JEPARA', 22000);
INSERT INTO tarif VALUES ('SURABAYA', 'MALANG', 10000);
INSERT INTO tarif VALUES ('SURABAYA', 'PALEMBANG', 30000);
INSERT INTO tarif VALUES ('SURABAYA', 'SUBANG', 21000);
INSERT INTO tarif VALUES ('SURABAYA', 'SURABAYA', 8000);
INSERT INTO tarif VALUES ('SURABAYA', 'SIDOARJO', 8000);
INSERT INTO tarif VALUES ('SIDOARJO', 'BANDUNG', 21000);
INSERT INTO tarif VALUES ('SIDOARJO', 'DEPOK', 22000);
INSERT INTO tarif VALUES ('SIDOARJO', 'JAKARTA', 19000);
INSERT INTO tarif VALUES ('SIDOARJO', 'YOGYAKARTA', 23000);
INSERT INTO tarif VALUES ('SIDOARJO', 'JEPARA', 29000);
INSERT INTO tarif VALUES ('SIDOARJO', 'MALANG', 10000);
INSERT INTO tarif VALUES ('SIDOARJO', 'PALEMBANG', 27000);
INSERT INTO tarif VALUES ('SIDOARJO', 'SUBANG', 33000);
INSERT INTO tarif VALUES ('SIDOARJO', 'SURABAYA', 8000);
INSERT INTO tarif VALUES ('SURABAYA', 'SIDOARJO', 8000);
SELECT * FROM tarif;


INSERT INTO users VALUES ( '0812345678910', '123' , 'Bambang', 'Jakarta', 'L', '01-01-2001');
INSERT INTO users VALUES ( '0812345678910', '123' , 'Ariq', 'Malang', 'L', '01-01-2000');
INSERT INTO users VALUES ( '0812345678910', '123' , 'Aden', 'Jakarta', 'L', '01-01-2002');
INSERT INTO users VALUES ( '0812345678910', '123' , 'Maya', 'Surabaya', 'P', '01-01-1999');
INSERT INTO users VALUES ( '0812345678910', '123' , 'Justin', 'Yogyakarta', 'L', '01-01-1998');
INSERT INTO users VALUES ( '0812345678910', '123' , 'Luna', 'Sidoarjo', 'P', '01-01-1995');
INSERT INTO users VALUES ( '0812345678910', '123' , 'Anya', 'Depok', 'P', '01-01-1991');
INSERT INTO users VALUES ( '0812345678910', '123' , 'Melisha', 'Palembang', 'P', '01-01-1998');
INSERT INTO users VALUES ( '0812345678910', '123' , 'Angel', 'Surabaya', 'P', '01-01-2001');
INSERT INTO users VALUES ( '0812345678910', '123' , 'Olivia', 'Malang', 'P', '01-01-2002');

SELECT * FROM users;
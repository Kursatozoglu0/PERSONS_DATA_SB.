
 Create Table DAIRELER(
	ID SERIAL NOT NULL PRIMARY KEY,
	GMDaireler varchar(150),
	GMID int not null UNIQUE 
);

INSERT INTO DAIRELER (GMDaireler, GMID) VALUES

('Amerika_Afrika_Ortadoğu_DB', 1),
('Sağlık Hizmetleri Dair', 2),
('İnsan Kaynakları Dairesi', 3),
('Mali Hizmetler Dairesi', 4),	
('Bilgi İşlem Dairesi', 5);

SELECT * FROM DAIRELER
SELECT * FROM personel_list
INSERT INTO Personel_List (Adi_Soyadi, Unvan, Memleket, PersonelID) VALUES
('Celal Orhun Ecemiş', 'Daire_Başkanı', 'Niğde', 1),
('Esma Şenyüz', 'Şef', 'Sivas', 1),
('Hakan Yaman', 'AB_Uzmanı', 'Diyarbakır', 1),
('Abdullah Karakaya', 'Tercüman', 'Afyon', 1),
('Sema Denktaş', 'Memur', 'Trabzon', 1),
('Gökhan Kahyaoğlu', 'Firma', 'Konya', 1),
('Aras Bayram', 'AB_Uzmanı', 'İzmir', 1);

INSERT INTO Personel_List (Adi_Soyadi, Unvan, Memleket, PersonelID) VALUES
('Yusuf Irmak', 'Daire_başkanı', 'Aksaray', 2),
('Kadir Öztürk', 'Saglik_Uzmanı', 'Samsun', 2),
('Yunus Emre Kaval', 'AB_Uzmanı', 'Diyarbakır', 2),
('Hikmet Güner', 'AB_Uzmanı', 'Kütahya', 2),
('Ömer Faruk Sarı', 'AB_Uzmanı', 'Samsun', 2),
('Salih Karagül', 'AB_Uzmanı', 'Çorum', 2),
('Aslı Ceylan', 'Saglık_Uzmanı', 'Sivas', 2),
('Tuğba Atak', 'Saglık_Uzmanı', 'Ankara', 2);

INSERT INTO Personel_List (Adi_Soyadi, Unvan, Memleket, PersonelID) VALUES
('Azmi Ekmen', 'Daire_Başkanı', 'Hatay', 3),
('Özlem Gürel Gökçay', 'Saglık_Uzmanı', 'Burdur', 3),
('Nazik Leba', 'Saglık_Uzmanı', 'Sakarya', 3),
('Fatih Demirel', 'Saglık_Uzmanı', 'Aydın', 3),
('Selim Gedikbaş', 'Saglık_Uzmanı', 'Bartın', 3),
('Şuayb Bayrak', 'Saglık_Uzmanı', 'Ankara', 3);

INSERT INTO Personel_List (Adi_Soyadi, Unvan, Memleket, PersonelID) VALUES
('Güvenç Güngör', 'Daire_Başkanı', 'Manisa', 4),
('Hacı Mustafa Hardal', 'Saglık_Uzmanı', 'Rize', 4),
('Arzu Öztürk', 'AB_Uzmanı', 'Samsun', 4),
('Sevim Secer', 'Firma', 'Konya', 4),
('Gamze Karaköse', 'Saglık_Uzmanı', 'Ankara', 4),
('Ebru Çelik', 'Memur', 'Yozgat', 4),
('Zeynep Koçyiğit', 'Memur', 'Yozgat', 4),
('Sefa Emin Aydemir', 'Memur', 'Ankara', 4);

INSERT INTO Personel_List (Adi_Soyadi, Unvan, Memleket, PersonelID) VALUES
('Ercan Kurnaz', 'Daire_Başkanı', 'Aksaray', 5),
('A.Ali Kum', 'Şube Müdürü', 'Çorum', 5),
('Ekrem Arafat Alçicek', 'Akademisyen', 'Bitlis', 5),
('Murat Denktaş', 'Memur', 'Zonguldak', 5),
('Osman Tekbaş', 'Memur', 'Yozgat', 5),
('Ahmet Acuner', 'Memur', 'Yozgat', 5),
('Gizem Yıldırım', 'Şef', 'Yozgat', 5),
('Ayhan Doğan', 'Memur', 'Çankırı', 5),
('Hacı Mustafa Aydoğan', 'Memur', 'Yozgat', 5),
('Nebi Özdem', 'Memur', 'Çankırı', 5),
('Süleyman Özdem', 'Memur', 'Çankırı', 5);

select * from personel_list;

--alterleri yap 
Alter Table daireler ADD COLUMN Personel_Unvanı varchar(50);
Alter Table Personel_List DROP COLUMN Personel_Maas;
Alter Table Personel_List ADD COLUMN Personel_age int;
Alter Table personel_list RENAME COLUMN unvan to Personel_Unvan;
--DROP Table personel_List;

--UPDATE 
Update personel_list
SET Personel_age = floor(random() * (60 - 30 + 2) + 1)::int
where personel_age Is NULL;

Select adi_soyadi,Personel_unvan,memleket from personel_list;
Select  adi_soyadi,memleket From personel_list ORDER BY memleket ASC;
Select  adi_soyadi,memleket From personel_list ORDER BY memleket DESC; 

Select * From personel_list where memleket='Ankara';
Select * From personel_list where personel_unvan IN ('Memur');
Select * From personel_list where personel_unvan  NOT IN ('Memur');
Select * From personel_list where memleket LIKE ('%A%');
Select * From personel_list where memleket NOT LIKE ('%A%');
Select * From personel_list WHERE memleket ilike ('aK%');
Select * From personel_list where personel_age BETWEEN 45 and 55;
Select * From personel_list where personel_age NOT BETWEEN 45 and 55;
Select * From personel_list where personel_unvan='AB_Uzmanı' AND memleket='Samsun';
Select * From personel_list where personel_unvan='AB_Uzmanı' OR memleket='Samsun';
Select * From personel_list where personel_unvan = 'Şef' OR personelid = 4;
Select * From personel_list WHERE personelid IN (2, 3);
Select * From personel_list 

SELECT CONCAT(adi_soyadi, ' - ', personel_unvan) AS personel_bilgisi 
FROM personel_list;

SELECT CONCAT(adi_soyadi, ' - ', memleket) AS Personel_Kişisel_Veri
from personel_list
 


select count(*) from personel_list;
Select * from personel_list LIMIT 4 OFFSET 2;
Select * from personel_list LIMIT 4;


SELECT DISTINCT Personel_Unvan FROM personel_list;

-- Örnek veri silme
DELETE FROM personel_list WHERE Adi_Soyadi = 'Aras Bayram';

Select SUM(Personel_maas) From personel_list;
Select MAX(Personel_maas) From personel_list;
Select MIN(Personel_maas) From personel_list;
Select AVG(Personel_maas) From personel_list; 

SELECT
	SUM(Personel_maas) AS "Maaşların Toplamı",
	MAX(Personel_maas) AS "En Yüksek Maaş",
	MIN(Personel_maas) AS "En Düşük Maaş",
	AVG(Personel_maas) AS "Maaşların Ortalaması"
FROM personel_list;


-- Daire adı ile Personel bilgilerini birleştirerek getirme (INNER JOIN)
SELECT p.Adi_Soyadi, p.Personel_Unvan, d.GMDaireler
FROM personel_list p
INNER JOIN DAIRELER d ON p.PersonelID = d.GMID;

Select K.Adi_Soyadi, K.memleket, A.GMDaireler
FROM personel_list K
RIGHT JOIN DAIRELER A ON K.PersonelID = A.GMID

SELECT Personel_Unvan, COUNT(*) AS Personel_Sayisi
FROM personel_list
GROUP BY Personel_Unvan;

SELECT memleket, COUNT(*) AS Memleket_Siralamasi
From personel_list
GROUP BY memleket;



SELECT personel_unvan, COUNT(*) AS Personel_Sayisi
FROM personel_list
GROUP BY personel_unvan  
HAVING COUNT(*) > 2;



SELECT Adi_Soyadi, Personel_Unvan, memleket FROM personel_list WHERE memleket = 'Ankara'
UNION ALL
SELECT Adi_Soyadi, Personel_Unvan, memleket FROM personel_list WHERE memleket = 'Samsun';



SELECT Adi_Soyadi FROM personel_list WHERE Personel_Unvan = 'Memur'
INTERSECT
SELECT Adi_Soyadi FROM personel_list WHERE memleket = 'Yozgat';

SELECT Adi_Soyadi FROM personel_list WHERE Personel_Unvan = 'AB_Uzmanı'
EXCEPT
SELECT Adi_Soyadi FROM personel_list WHERE memleket = 'Diyarbakır';

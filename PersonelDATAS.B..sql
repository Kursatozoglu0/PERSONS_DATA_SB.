create table Unvanlar(
	id serial not null primary key,
	category_title varchar(50)
);
insert into Unvanlar (category_title) values ('AB_Uzmanı'),('Saglik_Uzmanı'),('USP_Uzmanı'),('Tercüman');
insert into Unvanlar (category_title) values ('Bilgi_İşlem');
insert into Unvanlar (category_title) values ('Memur');
insert into Unvanlar (category_title) values ('Şef');

*
Create table Persons_Data(
	id serial not null primary key,
	Name_Surname varchar(120) not null,
	Home_Town varchar(50) not null,
	Age int not null,
	Title_ID int not null,
	Gender varchar(10),
	foreign key (Title_ID) references Unvanlar(id)
);
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Kürşat Özoğlu','Ankara',26,5,'Erkek');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Hakan Yaman','Diyarbakır',30,1,'Erkek');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Hikmet Günes','Sivas',35,1,'Erkek');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Buse Şahin','Adana',33,1,'Kadın');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Nihal Demirtaş','Konya',45,1,'Kadın');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('İsmail Candan','Ankara',42,3,'Erkek');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Ömer Faruk Sarı','Ankara',35,3,'Erkek');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Tuğba Atak','Konya',37,3,'Kadın');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Mustafa Hardal','Rize',38,2,'Erkek');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Abdullah Karakaya','Afyon',40,4,'Erkek');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Gizem Yıldırım','Ankara',33,7,'Kadın');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Ebru Çelik','Sivas',52,6,'Kadın');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Abdullah Karakaya','Afyon',40,4,'Erkek');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Esma Şenyüz','Ankara',55,7,'Kadın');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Özlem Gürel','Burdur',38,2,'Kadın');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Anıl Aşkan','Ankara',34,4,'Erkek');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Özkan Aşkan','Bolu',34,4,'Erkek');
insert into Persons_Data (Name_Surname,Home_Town,Age,Title_ID,Gender) values ('Hasam kan','Mersin',34,6,'Erkek');


select * from Unvanlar
select * from Persons_Data

ALTER TABLE Persons_Data ADD COLUMN Person_wage int;
ALTER TABLE Unvanlar DROP COLUMN Person_wage;
DROP TABLE person_imformation;


UPDATE Unvanlar SET category_title = 'Sözleşmeli' WHERE category_title ILIKE 'bilgi_işlem';
UPDATE Persons_Data SET Title_ID = 8 WHERE Title_ID = 5;

UPDATE Persons_Data 
SET Person_wage = floor(40000 + (random() * (120000 - 40000 + 1)));



DELETE FROM Persons_Data WHERE id = '13';

select Name_Surname,home_town,gender,title_id from Persons_Data;
select name_surname from Persons_Data order by name_surname ASC
select Name_Surname,home_town,gender,title_id from Persons_Data order by home_town ASC;
select Name_Surname,home_town,gender,title_id from Persons_Data order by Name_Surname DESC;

select * from Persons_Data where home_town='Ankara'
select * from Persons_Data where home_town in('Konya','Ankara');
select * from Persons_Data where home_town not in('Konya','Ankara');
select * from Persons_Data where name_surname LIKE '%e%';
select * from Persons_Data where name_surname NOT LIKE '%e%';
select * from Persons_Data where age between 30 and 40;
select * from Persons_Data where age not between 30 and 40;

select distinct gender from Persons_Data;

select * from Persons_Data limit 4;

select count(*) from Persons_Data;

select sum(Person_wage) from Persons_Data;
select max(Person_wage) from Persons_Data;
select min(Person_wage) from Persons_Data;
select avg(Person_wage) from Persons_Data;


select home_town,count(*) from Persons_Data group by home_town;
select gender,count(*) as Cinsiyet_Sayısı from Persons_Data group by gender;
SELECT * FROM Persons_Data WHERE Person_wage > 55000;
SELECT Name_Surname, Person_wage FROM Persons_Data WHERE Person_wage > 75000;
SELECT Name_Surname, Person_wage FROM Persons_Data WHERE Person_wage < 75000;




select * from Unvanlar
select * from Persons_Data
select name_surname,category_title,title_id from Persons_Data left join Unvanlar on Persons_Data.title_id=Unvanlar.id
select name_surname,category_title,title_id from Persons_Data right join Unvanlar on Persons_Data.title_id=Unvanlar.id
select name_surname,category_title,title_id from Persons_Data full join Unvanlar on Persons_Data.title_id=Unvanlar.id
select name_surname,category_title,title_id from Persons_Data inner join Unvanlar on Persons_Data.title_id=Unvanlar.id















CREATE DATABASE MusicCollection;

USE MusicCollection;

CREATE TABLE Styles(  -- таблиц€ стил≥в
Id INT IDENTITY PRIMARY KEY,
Style NVARCHAR(50)
)

INSERT INTO Styles VALUES
('POP'),('ROCK'),('JAZZ'),('TRAP');


CREATE TABLE Singers(   -- таблиц€ виконавц≥в
Id INT IDENTITY PRIMARY KEY,
NameSinger NVARCHAR(100)
)

INSERT INTO Singers VALUES
('Garrison Sears'),('Mannix Church'),('Ulysses Norman'),('Acton Cooper'),('Jacob Noel'),('Elijah Dyer'),('Graiden Ashley'),('Otto Barnett'),('Addison Valentine'),('Orson Norton');


CREATE TABLE Publications(   -- таблиц€ видавц≥в
Id INT IDENTITY PRIMARY KEY,
NamePublication NVARCHAR(100),
Country NVARCHAR(100)
)

INSERT INTO Publications VALUES
('Dolor LLC','Guatemala'),('Mauris Eu Incorporated','Netherlands'),('Mauris Eu Incorporated','Denmark'),('Dui Fusce Aliquam Limited','Poland'),('Egestas A Dui PC','Bahamas'),('Sed Turpis Industries','Faroe Islands'),('Amet PC','Falkland Islands'),('Tortor Dictum Industries','Faroe Islands'),('Orci Adipiscing Consulting','Moldova'),('Mauris Erat Associates','Zimbabwe');


CREATE TABLE Discs(  -- таблиц€ диск≥в
Id INT IDENTITY PRIMARY KEY,
NameDisc NVARCHAR(100),
SingerID INT,
Date DATE,
StyleID INT,
PublicationID INT,

CONSTRAINT FK__Discs__SingerID FOREIGN KEY (SingerID) REFERENCES Singers(Id),
FOREIGN KEY (StyleID) REFERENCES Styles(Id),
FOREIGN KEY (PublicationID) REFERENCES Publications(Id)
)

INSERT INTO Discs([NameDisc],[SingerID],[Date],[StyleID],[PublicationID]) VALUES('felis purus',7,'2020-01-05',2,3),('mauris. Suspendisse aliquet',5,'2019-08-05',2,8),('ac,',1,'2020-08-13',4,1),('risus. Nunc',5,'2019-08-29',1,7),('mauris',3,'2021-06-02',2,6),('tincidunt, nunc ac',6,'2019-07-23',4,9),('et',1,'2020-03-07',4,4),('Donec',8,'2020-10-04',4,6),('lorem fringilla ornare',5,'2020-04-22',4,2),('bibendum. Donec',6,'2019-09-25',4,1);
INSERT INTO Discs([NameDisc],[SingerID],[Date],[StyleID],[PublicationID]) VALUES('mattis. Cras eget',1,'2019-07-09',1,4),('libero. Proin',1,'2021-04-26',4,9),('iaculis, lacus pede',7,'2021-05-23',1,6),('congue. In',2,'2019-10-29',1,3),('fringilla cursus purus.',4,'2021-04-14',1,5),('Donec fringilla. Donec',9,'2020-01-01',1,7),('sagittis felis. Donec',3,'2020-03-28',2,5),('arcu',6,'2020-05-20',4,6),('vitae',1,'2020-05-14',3,9),('ultricies ligula.',10,'2021-04-02',2,1);
INSERT INTO Discs([NameDisc],[SingerID],[Date],[StyleID],[PublicationID]) VALUES('vehicula',5,'2020-12-24',4,2),('commodo hendrerit. Donec',9,'2020-09-27',1,3),('ut odio vel',4,'2020-11-18',4,6),('Suspendisse commodo',4,'2019-08-18',2,7),('dui augue eu',7,'2020-10-10',3,8),('mus. Aenean',6,'2019-09-16',2,9),('pede. Cum sociis',8,'2021-01-28',4,4),('adipiscing elit. Aliquam',1,'2019-07-17',2,9),('commodo hendrerit.',4,'2021-06-29',2,7),('Sed',7,'2019-09-14',4,6);


CREATE TABLE Sounds(  -- таблиц€ п≥сень
Id INT IDENTITY PRIMARY KEY,
NameSound NVARCHAR(200),
DiscID INT,
Duration DECIMAL(3,2),
StyleID INT,
SingersID INT,

FOREIGN KEY (DiscID) REFERENCES Discs(Id),
FOREIGN KEY (StyleID) REFERENCES Styles(Id),
FOREIGN KEY (SingersID) REFERENCES Singers(Id),
)

INSERT INTO Sounds([NameSound],[DiscID],[Duration],[StyleID],[SingersID]) VALUES('magna. Suspendisse',9,3,2.34,6),('cursus. Nunc mauris',7,3,3.5,2),('sit amet,',9,3,2.3,6),('diam eu dolor',14,5,2.22,1),('ultricies',21,1,1,2),('molestie.',23,2,2.45,3),('tincidunt',4,1,3.32,4),('a',31,1,2,4),('sed dictum',24,2,2.28,3),('id',23,2,4.47,5);
INSERT INTO Sounds([NameSound],[DiscID],[Duration],[StyleID],[SingersID]) VALUES('Nunc mauris elit,',6,4,1.34,1),('eleifend, nunc risus',17,3,1.54,2),('tortor. Nunc commodo',21,3,4.32,1),('in molestie tortor',18,1,4.32,6),('dolor quam, elementum',13,3,3.48,2),('iaculis, lacus',7,5,1.47,4),('felis.',11,3,4.28,5),('malesuada augue',14,2,2.12,6),('mauris ut mi.',7,5,2,8),('imperdiet',13,2,3,4);
INSERT INTO Sounds([NameSound],[DiscID],[Duration],[StyleID],[SingersID]) VALUES('Nullam feugiat placerat',23,3,4.34,7),('dictum',23,5,4.12,6),('tempus mauris',31,5,2.53,2),('eget, dictum placerat,',11,5,1.45,2),('neque',17,1,2.21,6),('bibendum',22,2,4.18,10),('est. Nunc ullamcorper,',28,2,1.56,6),('augue porttitor',24,3,4.13,1),('lacinia orci,',12,2,3.25,3),('viverra.',21,1,3,5);
INSERT INTO Sounds([NameSound],[DiscID],[Duration],[StyleID],[SingersID]) VALUES('Curabitur',21,1,3.34,5),('dictum',5,3,2.37,1),('tellus',14,3,1.39,7),('erat vel',10,1,2.59,10),('libero. Donec',18,5,1.45,1),('amet lorem semper',25,2,4,10),('nec luctus',20,3,1.27,5),('facilisis eget, ipsum.',18,3,4,10),('Nunc',32,4,3.34,1),('ac orci.',5,5,3.23,6);
INSERT INTO Sounds([NameSound],[DiscID],[Duration],[StyleID],[SingersID]) VALUES('mauris ipsum',28,2,4.56,10),('dolor, nonummy ac,',21,4,3.39,4),('Donec est mauris,',22,2,2.27,8),('fermentum metus.',5,4,1.21,6),('commodo at,',29,1,2.15,6),('Nam',27,2,3.37,10),('erat nonummy ultricies',21,5,4.43,4),('aliquet nec,',5,2,1.26,2),('ad litora torquent',27,4,1.43,9),('porttitor',29,2,4,9);




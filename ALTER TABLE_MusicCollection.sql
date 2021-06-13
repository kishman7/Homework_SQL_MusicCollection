USE MusicCollection;

--1. Додайте до вже існуючої таблиці з інформацією по музичному диску стовпець з короткою рецензією на нього
alter table Discs
add Recenziotion NVARCHAR(200);

--2. Додайте до вже існуючої таблиці з інформацією про видавця стовпець з юридичною адресою головного офісу
alter table Publications
add LegalAddress NVARCHAR(100);

--3. Змініть в уже існуючій таблиці з інформацією про пісні розмір поля, який зберігає назву пісні
alter table Sounds
alter column Duration decimal(4, 3);

--4. Видаліть з уже існуючої таблиці з інформацією про видавця стовпець з юридичною адресою головного офісу
alter table Publications
drop column LegalAddress;

alter table Discs
drop column Recenziotion;

--5. Видаліть зв'язок між таблицями «музичних дисків» і «виконавців»
alter table Discs
drop FK__Discs__SingerID;

--6. Додайте зв'язок між таблицями «музичних дисків» і «виконавців».
alter table Discs
ADD FOREIGN KEY(SingerID) REFERENCES Singers(Id);


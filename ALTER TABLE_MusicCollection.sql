USE MusicCollection;

--1. ������� �� ��� ������� ������� � ����������� �� ��������� ����� �������� � �������� �����糺� �� �����
alter table Discs
add Recenziotion NVARCHAR(200);

--2. ������� �� ��� ������� ������� � ����������� ��� ������� �������� � ��������� ������� ��������� �����
alter table Publications
add LegalAddress NVARCHAR(100);

--3. ����� � ��� �������� ������� � ����������� ��� ��� ����� ����, ���� ������ ����� ���
alter table Sounds
alter column Duration decimal(4, 3);

--4. ������� � ��� ������� ������� � ����������� ��� ������� �������� � ��������� ������� ��������� �����
alter table Publications
drop column LegalAddress;

alter table Discs
drop column Recenziotion;

--5. ������� ��'���� �� ��������� ��������� ����� � �����������
alter table Discs
drop FK__Discs__SingerID;

--6. ������� ��'���� �� ��������� ��������� ����� � �����������.
alter table Discs
ADD FOREIGN KEY(SingerID) REFERENCES Singers(Id);


--�������� 3. ������� ������� ������������� (View).

USE MusicCollection;

--1. ������������� �������� ����� ��� �����
create view vw_Styles as
select S.Style
from Styles S;

select * from vw_Styles;

--2. ������������� �������� ����� ��� ��������
create view vw_Publications as
select p.NamePublication
from Publications P;

select * from vw_Publications;

--3. ������������� �������� ����� ���������� ��� ����: ����� �����, ����������, ���� �������, �����, ��������.
create view vw_FullDisc as
select D.NameDisc, S.NameSinger, D.Date, St.Style, P.NamePublication
from Discs D join Singers S on S.Id=D.SingerID join Styles St on St.Id=D.StyleID join Publications P on P.Id=D.PublicationID;

select * from vw_FullDisc;


--3. ������������� �������� ���������� ��� ������ ����� ��������� �����. ���������, The Beatles
create view vw_DiscThis as
select S.NameSinger, D.NameDisc
from Discs D join Singers S on S.Id=D.SingerID
where S.NameSinger = 'Acton Cooper';

select * from vw_DiscThis;

--4. ������������� �������� ����� ������ ����������� � �������� ���������. ����������� ����������� �� ������� ����� � ��������
create view vw_BestSinger as
select NameSinger, CountSinger
from 
	(select top 1 S.NameSinger as NameSinger, Count(D.Id) as CountSinger
	from Singers S join Discs D on S.Id=D.SingerID 
	group by S.NameSinger
	order by CountSinger desc) as result

select * from vw_BestSinger;

--5. ������������� �������� ���-3 �������������� � �������� ����������. ����������� ����������� �� ������� ����� � ��������
create view vw_BestSingerTop3 as
select NameSinger, CountSinger
from 
	(select top 3 S.NameSinger as NameSinger, Count(D.Id) as CountSinger
	from Singers S join Discs D on S.Id=D.SingerID 
	group by S.NameSinger
	order by CountSinger desc) as result

select * from vw_BestSingerTop3;

--6. ������������� �������� ��������� �� ��������� �������� ������.
create view vw_MaxSound as
select top 1 S.NameSound, S.Duration
from Sounds S
order by S.Duration desc

select * from vw_MaxSound;




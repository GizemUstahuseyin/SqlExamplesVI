						--SELECT PROCEDURE
--CREATE PROCEDURE NotDuzenleme --Not d�zenleme ad�nda procedure olu�turduk
--(
--	@puan int, --parametre tan�ml�yoruz
--	@yas int --parametre tan�ml�yoruz
--)
--AS 
--BEGIN
--	UPDATE Student --Student tablosu olarak g�ncelle
--	SET Grade = Grade + @puan --Puan� benim belirleyec�im �ekilde artt�r,yani grade de�i�kenini puan olarak verdi�im veri �eklinde tan�mla
--	WHERE age < @yas; --ya�� benim belirleyec�im �ekilde artt�r,yani age de�i�kenini puan olarak verdi�im veri �eklinde tan�mla
--END

--exec NotDuzenleme 1,20;

--INSERT INTO Student VALUES(6,'Gizem','Ustahuseyin','Programmer',30,0)

--CREATE PROCEDURE OgrenciEkleme --Not d�zenleme ad�nda procedure olu�turduk
--(
--	@Kullan�c�ID int, --parametre tan�ml�yoruz
--	@Kullan�c�Ad� char(20), --parametre tan�ml�yoruz
--	@Kullan�c�Soyad� char(20),
--	@Departman� char(30),
--	@Yas� int,
--	@Puan� float
--)
--AS 
--BEGIN
--	INSERT INTO Student VALUES(@Kullan�c�ID,@Kullan�c�Ad�,@Kullan�c�Soyad�,@Departman�,@Yas�,@Puan�)
--END

--exec OgrenciEkleme 7,'Mehmet','G�ven','Programmer',25,0;
--exec OgrenciEkleme 8,'Atike','Do�an','Programmer',21,0;
--exec OgrenciEkleme 9,'Mert','Ecevit','MIS',30,0;
--exec OgrenciEkleme 10,'Esma','Paksoy','Programmer',27,0;

					--FUNCTIONS
--CREATE FUNCTION YasOrtalama --Yas ortalama ad�nda procedure olu�turduk
--(
----
--)
--RETURNS FLOAT
--AS 
--BEGIN
--	DECLARE @sonuc FLOAT;
--	SELECT @sonuc = AVG(Age)
--	FROM Student
--	RETURN @sonuc
--END

--SELECT dbo.YasOrtalama();

--ALTER FUNCTION YasOrtalama --Yas ortalama ad�nda fonksiyon olu�turduk
--(
--@yas int
--)
--RETURNS FLOAT
--AS 
--BEGIN
--	DECLARE @sonuc FLOAT
--	SELECT @sonuc = AVG(Grade)
--	FROM dbo.Student
--	WHERE Age > @yas;
--	RETURN @sonuc;
--END

--SELECT dbo.YasOrtalama(21);

--CREATE FUNCTION DepartmanAtama --Yas ortalama ad�nda fonksiyon olu�turduk
--(
--)
--RETURNS varchar
--AS 
--BEGIN
--	DECLARE @sonuc varchar(255);
--SELECT @sonuc ='Fonksiyon d�zg�n bir �ekilde ger�ekle�tirildi';
--return @sonuc;
--END

--SELECT dbo.DepartmanAtama();

CREATE FUNCTION HarfKisiti
(

)
RETURNS float
AS
BEGIN
SELECT * FROM HarfKisiti
WHERE FirstName LIKE 'b';

RETURN;
END
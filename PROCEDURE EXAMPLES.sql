						--SELECT PROCEDURE
--CREATE PROCEDURE NotDuzenleme --Not düzenleme adýnda procedure oluþturduk
--(
--	@puan int, --parametre tanýmlýyoruz
--	@yas int --parametre tanýmlýyoruz
--)
--AS 
--BEGIN
--	UPDATE Student --Student tablosu olarak güncelle
--	SET Grade = Grade + @puan --Puaný benim belirleyecðim þekilde arttýr,yani grade deðiþkenini puan olarak verdiðim veri þeklinde tanýmla
--	WHERE age < @yas; --yaþý benim belirleyecðim þekilde arttýr,yani age deðiþkenini puan olarak verdiðim veri þeklinde tanýmla
--END

--exec NotDuzenleme 1,20;

--INSERT INTO Student VALUES(6,'Gizem','Ustahuseyin','Programmer',30,0)

--CREATE PROCEDURE OgrenciEkleme --Not düzenleme adýnda procedure oluþturduk
--(
--	@KullanýcýID int, --parametre tanýmlýyoruz
--	@KullanýcýAdý char(20), --parametre tanýmlýyoruz
--	@KullanýcýSoyadý char(20),
--	@Departmaný char(30),
--	@Yasý int,
--	@Puaný float
--)
--AS 
--BEGIN
--	INSERT INTO Student VALUES(@KullanýcýID,@KullanýcýAdý,@KullanýcýSoyadý,@Departmaný,@Yasý,@Puaný)
--END

--exec OgrenciEkleme 7,'Mehmet','Güven','Programmer',25,0;
--exec OgrenciEkleme 8,'Atike','Doðan','Programmer',21,0;
--exec OgrenciEkleme 9,'Mert','Ecevit','MIS',30,0;
--exec OgrenciEkleme 10,'Esma','Paksoy','Programmer',27,0;

					--FUNCTIONS
--CREATE FUNCTION YasOrtalama --Yas ortalama adýnda procedure oluþturduk
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

--ALTER FUNCTION YasOrtalama --Yas ortalama adýnda fonksiyon oluþturduk
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

--CREATE FUNCTION DepartmanAtama --Yas ortalama adýnda fonksiyon oluþturduk
--(
--)
--RETURNS varchar
--AS 
--BEGIN
--	DECLARE @sonuc varchar(255);
--SELECT @sonuc ='Fonksiyon düzgün bir þekilde gerçekleþtirildi';
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
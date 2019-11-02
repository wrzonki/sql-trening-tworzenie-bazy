/*Trigger*/
CREATE TRIGGER suma BEFORE INSERT ON Pracownicy
  FOR EACH ROW SET @suma = @suma + NEW.placa;
SET @suma = 0;

/*
TEST TRIGGER suma
Powinno wyświetlić 4000 (PLN)
*/
INSERT INTO Pracownicy
  VALUES
  ('11','TestImie','TestNazwisko','01012010','2000','kierowca widlaka',NULL,'100','1'),
  ('12','TestImie','TestNazwisko','01012010','2000','kierowca widlaka',NULL,'100','1');
SELECT @suma AS 'Suma dodatkowych wypłat';

/*Trigger*/
CREATE TRIGGER produkty BEFORE INSERT ON Towary
  FOR EACH ROW SET @wartosc_towaru = @wartosc_towaru + NEW.cena_zakupu;
SET @wartosc_towaru = 0;
/*
TEST TRIGGER produkty
Powinno wyświetlić 200 (PLN)
*/
INSERT INTO Towary
  VALUES
  ('7','BOSH','1A1','17','50','100','1'),
  ('8','SIEMENS','1A2','27','50','100','1');
SELECT @wartosc_towaru AS 'Całkowita wartość zakupionego towaru';

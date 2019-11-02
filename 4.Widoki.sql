CREATE VIEW viewPracownicy AS
  SELECT imie, nazwisko, stanowisko, placa
  FROM Pracownicy;

CREATE VIEW viewMaszyny AS
  SELECT id_maszyny, typ, Pracownicy.id_pracownika, imie, nazwisko
  FROM Maszyny, Pracownicy
  WHERE Maszyny.id_maszyny = Pracownicy.id_pracownika;

CREATE VIEW viewRocznaPensja AS
  SELECT DISTINCT(nazwisko), imie, sum(placa)*12
  AS RocznePensje
  FROM Pracownicy
  GROUP BY id_pracownika

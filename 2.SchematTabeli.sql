CREATE TABLE Magazyny
(
  id_magazyn INT NOT NULL,
  nazwa TINYTEXT NOT NULL,
  miasto TINYTEXT NOT NULL,
  ulica TINYTEXT NOT NULL,
  nr INT NOT NULL,
  powierzchnia INT,

  PRIMARY KEY (id_magazyn)
);

CREATE TABLE Pracownicy
(
  id_pracownika INT NOT NULL,
  imie TINYTEXT NOT NULL,
  nazwisko TINYTEXT NOT NULL,
  data_zatrudnienia TINYTEXT NOT NULL,
  placa INT NOT NULL,
  stanowisko TINYTEXT NOT NULL,
  nagany INT,
  premie INT,
  id_magazyn INT NOT NULL,

  PRIMARY KEY (id_pracownika),
  FOREIGN KEY (id_magazyn) REFERENCES Magazyny(id_magazyn)
);

CREATE TABLE Towary
(
  id_towaru INT NOT NULL,
  id_kontrahent TINYTEXT NOT NULL,
  lokalizacja_na_magazynie TINYTEXT NOT NULL,
  ilosc INT NOT NULL,
  cena_zakupu INT NOT NULL,
  cena_sprzedazy INT NOT NULL,
  id_magazyn INT NOT NULL,

  PRIMARY KEY (id_towaru),
  FOREIGN KEY (id_magazyn) REFERENCES Magazyny(id_magazyn)
);

CREATE TABLE Kontrahent
(
  id_kontrahent INT NOT NULL,
  nazwa TINYTEXT NOT NULL,
  miasto TINYTEXT NOT NULL,
  kod_pocztowy INT NOT NULL,
  ulica TINYTEXT NOT NULL,
  nr INT NOT NULL,
  rabat INT,

  PRIMARY KEY (id_kontrahent)
);

CREATE TABLE Faktury
(
  id_faktury INT NOT NULL,
  nr_faktury INT NOT NULL,
  oplacone BOOLEAN NOT NULL,
  brutto INTEGER NOT NULL,
  netto INTEGER NOT NULL,
  cena_zakupu INTEGER NOT NULL,
  id_kontrahent INT NOT NULL,

  PRIMARY KEY (id_faktury),
  FOREIGN KEY (id_kontrahent) REFERENCES Kontrahent(id_kontrahent)

);

CREATE TABLE Maszyny
(
  id_maszyny INT NOT NULL,
  typ TINYTEXT NOT NULL,
  id_pracownika INT NOT NULL,
  przebieg INTEGER,
  koszt_miesieczny INT,
  id_magazyn INT NOT NULL,

  PRIMARY KEY (id_maszyny),
  FOREIGN KEY (id_pracownika) REFERENCES Pracownicy(id_pracownika),
  FOREIGN KEY (id_magazyn) REFERENCES Magazyny(id_magazyn)
);

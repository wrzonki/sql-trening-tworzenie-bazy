INSERT INTO Magazyny (id_magazyn,nazwa,miasto,ulica,nr,powierzchnia)
  VALUES
    ('1','Włochy','Warszawa','Łopuszanska','12','1500'),
    ('2','Bródno','Warszawa','Kondratowicza','4','2500'),
    ('3','Grochów','Warszawa','Grochowska','15','500');

INSERT INTO Pracownicy (id_pracownika,imie,nazwisko,data_zatrudnienia,placa,stanowisko,nagany,premie,id_magazyn)
  VALUES
  /*operatorzy widlaków*/
    ('1','Adam','Adamowski','01012010','2000','kierowca widlaka',NULL,'100','1'),
    ('2','Bartek','Bartkowski','02012010','2100','kierowca widlaka',NULL,'200','2'),
    ('3','Cezary','Cezary','03012010','2200','kierowca widlaka',NULL,'300','3'),
    /*magazynierzy*/
    ('4','Damian','Damianowski','04012010','2300','magazynier',NULL,'100','1'),
    ('5','Eugeniusz','Eugeniuszowski','05012010','2400','magazynier',NULL,'200','2'),
    ('6','Grzegorz','Grzegorzewski','06012010','2500','magazynier',NULL,'300','3'),
    /*księgowe*/
    ('7','Alicja','Kwiatkowska','01013010','3300','księgowa',NULL,'100','1'),
    ('8','Agata','Kwiatkowska','01013010','3400','księgowa',NULL,'200','2'),
    ('9','Beata','Kowalska','01013010','3500','księgowa',NULL,'300','3');

INSERT INTO Towary (id_towaru,id_kontrahent,lokalizacja_na_magazynie,ilosc,cena_zakupu,cena_sprzedazy,id_magazyn)
  VALUES
  /*Magazyn 1*/
  ('1','BOSH','1A1','17','50','100','1'),
  ('2','SIEMENS','1A2','27','50','100','1'),
  /*Magazyn 2*/
  ('3','BOSH','2A1','17','50','100','2'),
  ('4','SIEMENS','2A2','27','50','100','2'),
  /*Magazyn 3*/
  ('5','BOSH','3A1','17','50','100','3'),
  ('6','SIEMENS','3A2','27','50','100','3');

INSERT INTO Kontrahent (id_kontrahent,nazwa,miasto,kod_pocztowy,ulica,nr,rabat)
  VALUES
  /*Biedronka*/
  ('1','Biedronka','Warszawa','11111','Marszałkowska','1','7'),
  ('2','Biedronka','Warszawa','22222','Aleje Jerozolimskie','2','7'),
  /*Lidl*/
  ('3','Lidl','Warszawa','33333','Kolejowa','4','12'),
  ('4','Lidl','Warszawa','44444','Okopowa','4','12'),
  /*Kaufland*/
  ('5','Kaufland','Warszawa','55555','Grochowska','11','15'),
  ('6','Kaufland','Warszawa','666666','Marsa','32','15');

INSERT INTO Faktury (id_faktury,nr_faktury,oplacone,brutto,netto,cena_zakupu,id_kontrahent)
  VALUES
  /*Biedronka 1*/
  ('1','20181',TRUE,'1230','1000','500','1'),
  ('2','20182',FALSE,'1230','1000','500','1'),
  /*Biedronka 2*/
  ('3','20183',TRUE,'1230','1000','500','2'),
  ('4','20184',FALSE,'1230','1000','500','2'),
  /*Lidl 1 & 2*/
  ('5','20185',TRUE,'1230','1000','500','3'),
  ('6','20186',FALSE,'1230','1000','500','4'),
  /*Kaufland 1 & 2*/
  ('7','20187',TRUE,'1230','1000','500','5'),
  ('8','20188',FALSE,'1230','1000','500','6');

INSERT INTO Maszyny (id_maszyny,typ,id_pracownika,przebieg,koszt_miesieczny,id_magazyn)
  VALUES
  /*Magazyn 1*/
  ('1','widlak','1',NULL,'300','1'),
  ('2','paleciak','4',NULL,NULL,'1'),
  /*Magazyn 2*/
  ('3','widlak','2',NULL,'300','2'),
  ('4','paleciak','5',NULL,NULL,'2'),
  /*Magazyn 3*/
  ('5','widlak','3',NULL,'300','3'),
  ('6','paleciak','6',NULL,NULL,'3');

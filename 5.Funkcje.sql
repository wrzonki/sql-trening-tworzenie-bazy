/*Funkcja RocznaPensja*/
DELIMITER //
CREATE FUNCTION RocznaPensja (placa int)
RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE roczna int;
  SET roczna = placa*12;
  RETURN RocznaPensja
END//

/*Funkcja SredniaPlaca*/
DELIMITER //
CREATE PROCEDURE SredniaPlaca()
DETERMINISTIC
BEGIN
  SELECT AVG(placa) FROM Pracownicy
END//

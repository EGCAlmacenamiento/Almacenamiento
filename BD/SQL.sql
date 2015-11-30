DROP TABLE IF EXISTS `Votes`;
DROP TABLE IF EXISTS `Votacion`;

CREATE TABLE `Votacion` (
	`votacion_id`  int(11) NOT NULL AUTO_INCREMENT,
	`name` text NOT NULL,
	PRIMARY KEY (votacion_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Votes` (
  `vote_id` int(11) NOT NULL AUTO_INCREMENT,
  `vote` text NOT NULL,
  `votation_id` int(11) NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  PRIMARY KEY (vote_id),
  FOREIGN KEY (votation_id) 
        REFERENCES Votacion(votacion_id)
        ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Procedimiento Creacion Votacion y Voto
DROP PROCEDURE IF EXISTS `InsertarVotacionVoto`;

DELIMITER //

CREATE PROCEDURE InsertarVotacionVoto
(
	IN votacionName VARCHAR(100), 
	IN voto VARCHAR(100), 
	IN latitud double, 
	IN longitud double
)
BEGIN
	DECLARE votacionId INT DEFAULT null;

	SELECT votacion_id INTO votacionId FROM Votacion WHERE name like votacionName;
	IF votacionId = null THEN
		INSERT INTO Votacion VALUES(votacionName);
		SELECT LAST_INSERT_ID() as votId FROM Votacion;
		INSERT INTO Votes values(voto, votId, latitud, longitud);
	ELSE
		SELECT LAST_INSERT_ID() as votId FROM Votacion;
		INSERT INTO Votes values(voto, votId, latitud, longitud);
    END IF;
END

//
DELIMITER ;
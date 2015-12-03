DROP TABLE IF EXISTS `Votes`;
DROP TABLE IF EXISTS `Votacion`;

CREATE TABLE `Votacion` (
	`votacion_id`  int(11) NOT NULL,
	`name` text NOT NULL,
	PRIMARY KEY (votacion_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Votes` (
  `vote_id` int(11) NOT NULL,
  `vote` text NOT NULL,
  `votation_id` int(11) NOT NULL,
  `cod_pos` int(6) NOT NULL,
  PRIMARY KEY (vote_id),
  FOREIGN KEY (votation_id) 
        REFERENCES Votacion(votacion_id)
        ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Procedimiento Creacion Votacion y Voto
DROP PROCEDURE IF EXISTS `InsertarVoto`;
DROP PROCEDURE IF EXISTS `InsertarVotacion`;

DELIMITER //
	
CREATE PROCEDURE InsertarVotacion
(
	IN votacionName VARCHAR(100)
)
BEGIN
	DECLARE votacionId INT;

	SELECT COUNT(*)+1 INTO votacionId FROM Votacion;
	INSERT INTO Votacion VALUES(votacionId, votacionName);
    
END
//

DELIMITER ;

DELIMITER //
	
CREATE PROCEDURE InsertarVoto
(
	IN votacionName VARCHAR(100), 
	IN voto VARCHAR(100),  
	IN codPos INT(6)
)
BEGIN
	DECLARE votacionId INT;
	DECLARE votId1 INT;

	SELECT votacion_id INTO votacionId FROM `Votacion` WHERE name like votacionName;
		
	SELECT COUNT(*)+1 INTO votId1 FROM Votes;
	INSERT INTO Votes values(votId1, voto, votacionId, codPos);
    
END
//

DELIMITER ;
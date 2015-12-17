DROP TABLE IF EXISTS `Votes`;
DROP TABLE IF EXISTS `Votation`;

CREATE TABLE `Votation` (
	`votation_id`  int(11) NOT NULL,
	`name` text NOT NULL,
	PRIMARY KEY (votation_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Votes` (
  `vote_id` int(11) NOT NULL,
  `vote` text NOT NULL,
  `votation_id` int(11) NOT NULL,
  `zip_code` int(6) NOT NULL,
  PRIMARY KEY (vote_id),
  FOREIGN KEY (votation_id) 
        REFERENCES Votation(votation_id)
        ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Procedimiento Creacion Votacion y Voto
DROP PROCEDURE IF EXISTS `InsertVote`;
DROP PROCEDURE IF EXISTS `InsertVotation`;

DELIMITER //
	
CREATE PROCEDURE InsertVotation
(
	IN votationName VARCHAR(100)
)
BEGIN
	DECLARE votationId INT;

	SELECT COUNT(*)+1 INTO votationId FROM Votation;
	INSERT INTO Votation VALUES(votationId, votationName);
    
END
//

DELIMITER ;

DELIMITER //
	
CREATE PROCEDURE InsertVote
(
	IN votationName VARCHAR(100), 
	IN vote VARCHAR(100),  
	IN zipCode INT(6)
)
BEGIN
	DECLARE votationId INT;
	DECLARE votId1 INT;

	SELECT votation_id INTO votationId FROM `Votation` WHERE name like votationName;
		
	SELECT COUNT(*)+1 INTO votId1 FROM Votes;
	INSERT INTO Votes values(votId1, vote, votationId, zipCode);
    
END
//

DELIMITER ;
DROP TABLE IF EXISTS `Votes`;
DROP TABLE IF EXISTS `Votation`;
DROP TABLE IF EXISTS `administrator`;
DROP TABLE IF EXISTS `useraccount`;
DROP TABLE IF EXISTS `useraccount_authorities`;

CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `userAccount_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `useraccount` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `useraccount_authorities` (
  `UserAccount_id` int(11) NOT NULL,
  `authority` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Votation` (
	`votation_id`  int(11) NOT NULL,
	`name` text NOT NULL,
	PRIMARY KEY (votation_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Votes` (
  `vote_id` int(11) NOT NULL,
  `vote` varbinary(32) NOT NULL,
  `votation_id` int(11) NOT NULL,
  `zipcode` int(6) NOT NULL,
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
	IN zipcode INT(6),
	IN key_AES TEXT(10)
)
BEGIN
	DECLARE votationId INT;
	DECLARE votId1 INT;

	SELECT votation_id INTO votationId FROM `Votation` WHERE name like votationName;
		
	SELECT COUNT(*)+1 INTO votId1 FROM Votes;
	INSERT INTO Votes values(votId1, AES_ENCRYPT(vote, key_AES), votationId, zipcode);
    
END
//

DELIMITER ;
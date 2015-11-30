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
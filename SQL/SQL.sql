CREATE TABLE IF NOT EXISTS `Votacion` (
  `votacion_id`  int(11) NOT NULL,
  `name` text NOT NULL,
   PRIMARY KEY (votacion_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `Votes` (
  `vote_id` int(11) NOT NULL,
  `vote` text NOT NULL,
  `votation_id` int(11) NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  FOREIGN KEY (votation_id) 
        REFERENCES Votacion(votacion_id)
        ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
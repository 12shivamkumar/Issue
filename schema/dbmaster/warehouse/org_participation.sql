

CREATE TABLE `org_participation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_id` int(11) NOT NULL COMMENT 'the program to which this organization is a part',
  `org_id` int(11) NOT NULL,
  `joined_date` datetime NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `program_id` (`org_id`,`program_id`),
  KEY `program_id_2` (`program_id`),
  KEY `auto_time_idx` (`joined_date`) 
) ;


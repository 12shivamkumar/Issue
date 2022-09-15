

CREATE TABLE `state_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `state_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_2` (`country_id`,`state_name`),
  KEY `country_id` (`country_id`)
) ;


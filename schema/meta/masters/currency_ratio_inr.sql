

CREATE TABLE `currency_ratio_inr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_id` int(10) NOT NULL,
  `ratio` decimal(12,3) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `currency_id_is_active` (`currency_id`,`is_active`),
  KEY `auto_update_time` (`auto_update_time`)
) 




CREATE TABLE `supported_currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `iso_code` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso_code_numeric` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `time_idx` (`auto_update_time`)
) ;


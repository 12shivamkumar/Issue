

CREATE TABLE `request_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('CHANGE_IDENTIFIER','GOODWILL','TRANSACTION_UPDATE','OTHERS') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_value` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ;


CREATE TABLE `provider_tables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider_id` int DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_name_idx` (`provider_id`,`name`)
) ENGINE=InnoDB;
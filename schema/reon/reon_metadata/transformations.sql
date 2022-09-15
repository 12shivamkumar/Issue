CREATE TABLE `transformations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `template` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` int NOT NULL,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `provider_table_id` int NOT NULL,
  `sql_query` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_verified` tinyint NOT NULL DEFAULT '0',
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_str` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_key` (`provider_table_id`,`scope_id`)
) ENGINE=InnoDB;
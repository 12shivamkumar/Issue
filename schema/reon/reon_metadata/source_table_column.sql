CREATE TABLE `source_table_column` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `table_id` int NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `scope_id` int DEFAULT '-1000',
  `default_value` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_optional_column` tinyint(1) NOT NULL DEFAULT '0',
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_col_name` (`table_id`,`name`)
) ENGINE=InnoDB;
CREATE TABLE `banding` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dim_table_id` int NOT NULL,
  `column_id` int NOT NULL,
  `type` enum('VALUE','DATE') NOT NULL DEFAULT 'VALUE',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int NOT NULL DEFAULT '-1000',
  `display_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_type` enum('STANDARD','EXTENDED_FIELD') NOT NULL DEFAULT 'STANDARD',
  `custom_table_id` int DEFAULT NULL,
  `column_id_str` varchar(200) NOT NULL,
  `dim_table_id_str` varchar(200) NOT NULL,
  `custom_table_id_str` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `band_org_unique` (`scope_id`,`name`),
  KEY `scope_dim_table` (`scope_id`,`dim_table_id`,`is_active`)
) ENGINE=InnoDB;
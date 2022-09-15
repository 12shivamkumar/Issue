CREATE TABLE `config_keys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_tables` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` int NOT NULL,
  `is_valid` tinyint NOT NULL,
  `value_src_table_id` int NOT NULL,
  `value_select_col_id` int NOT NULL,
  `filters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `join_tables_str` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_src_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_select_col_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filters_str` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
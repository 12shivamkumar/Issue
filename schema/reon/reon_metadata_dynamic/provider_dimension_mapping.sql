CREATE TABLE `provider_dimension_mapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider_table_id` int DEFAULT NULL,
  `provider_col_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dim_table_id` int DEFAULT NULL,
  `dimension_column_id` int DEFAULT NULL,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `null_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `not_null_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_mappings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `capture_default_value` tinyint(1) NOT NULL DEFAULT '0',
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `id_str` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_col_name_str` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dim_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimension_column_id_str` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
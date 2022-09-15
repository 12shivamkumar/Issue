CREATE TABLE `logical_summary_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `summary_table_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_by_cols` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `primary_date_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partition_keys` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_standard_filters` tinyint(1) NOT NULL,
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_by_cols_str` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
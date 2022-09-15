CREATE TABLE `union_mapping` (
  `table_mapping_id` int NOT NULL,
  `target_diff_column_id` int NOT NULL,
  `diff_column_value` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_dynamic_partition` tinyint(1) NOT NULL,
  `id_str` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_mapping_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_diff_column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`table_mapping_id`)
) ENGINE=InnoDB;

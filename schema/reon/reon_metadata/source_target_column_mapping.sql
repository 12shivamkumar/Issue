CREATE TABLE `source_target_column_mapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_mapping_id` int NOT NULL,
  `source_column_id` int NOT NULL,
  `target_column_id` int NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_str` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_mapping_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mapping_target_table` (`table_mapping_id`,`target_column_id`,`scope_id`) USING BTREE
) ENGINE=InnoDB;

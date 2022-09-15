CREATE TABLE `source_shard_table_info` (
  `table_id` int NOT NULL,
  `end_point_id` int NOT NULL,
  `from_table` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `select_column` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_table_sharded` tinyint(1) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_point_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB;
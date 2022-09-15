CREATE TABLE `summary_table_column` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logical_summary_table_id` int NOT NULL,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `data_type` enum('INT','BIGINT','DOUBLE','TEXT') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `col_type` enum('MEASURE','DIMENSION','FACT_REFERENCE','PARTITION_KEY','DUMP_DATA') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logical_summary_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
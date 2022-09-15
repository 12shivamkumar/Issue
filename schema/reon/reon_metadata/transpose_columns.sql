CREATE TABLE `transpose_columns` (
  `transposed_column_id` int NOT NULL,
  `transpose_table_id` int NOT NULL,
  `source_column_id` int DEFAULT NULL,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `is_active` int DEFAULT '1',
  `column_type` enum('GROUPING','MAP','TRANSPOSE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conditions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `transposed_column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transpose_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conditions_str` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`transposed_column_id`,`scope_id`)
) ENGINE=InnoDB;
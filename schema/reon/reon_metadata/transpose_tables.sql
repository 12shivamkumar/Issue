CREATE TABLE `transpose_tables` (
  `transposed_table_id` int NOT NULL COMMENT 'final table',
  `source_table_id` int DEFAULT NULL COMMENT 'initial table',
  `scope_id` int NOT NULL DEFAULT '-1000',
  `is_active` int DEFAULT '1',
  `transposed_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`transposed_table_id`)
) ENGINE=InnoDB;
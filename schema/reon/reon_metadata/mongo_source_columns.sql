CREATE TABLE `mongo_source_columns` (
  `source_column_id` int NOT NULL,
  `source_table_id` int NOT NULL,
  `expression` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `source_column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`source_column_id`)
) ENGINE=InnoDB;

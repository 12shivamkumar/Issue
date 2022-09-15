CREATE TABLE `fact_table_column` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fact_table_id` int NOT NULL,
  `name` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_type` enum('INT','BIGINT','DOUBLE','TEXT') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordinal_position` int NOT NULL DEFAULT '1',
  `column_type` enum('PK','CONSTANT_PK','SRC_MEASURE','COMPUTED_MEASURE','DIMENSION','COMPUTED_DIMENSION','FACT_REFERENCE','PARTITION_KEY','DUMP_DATA','ETL_ONLY_DIMENSION','DIM_PK') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int NOT NULL DEFAULT '-1000',
  `functional_dependency_keys` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fact_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `functional_dependency_keys_str` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fact_pk` (`fact_table_id`,`name`)
) ENGINE=InnoDB;
CREATE TABLE `source_target_dimension_mapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source_table_id` int NOT NULL,
  `fact_table_id` int NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fact_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `source_table_id` (`source_table_id`,`fact_table_id`)
) ENGINE=InnoDB;
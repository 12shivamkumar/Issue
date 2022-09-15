CREATE TABLE `attribution_strategy_mapping` (
  `strategy_id` int NOT NULL,
  `fact_table_id` int NOT NULL,
  `fact_column_id` int NOT NULL,
  `source_table_id` int NOT NULL,
  `source_column_id` int NOT NULL,
  `scope_id` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `strategy_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fact_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fact_column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `column_scope` (`strategy_id`,`fact_table_id`,`fact_column_id`,`scope_id`)
) ENGINE=InnoDB;
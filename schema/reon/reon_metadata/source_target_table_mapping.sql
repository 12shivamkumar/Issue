CREATE TABLE `source_target_table_mapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fact_table_id` int NOT NULL,
  `source_table_id` int NOT NULL,
  `source_table_type` enum('SOURCE','LOGICAL') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SOURCE',
  `target_table_id` int NOT NULL,
  `target_table_type` enum('TARGET','LOGICAL') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'TARGET',
  `mapping_type` enum('ONE_TO_ONE','UNION_MAPPING','DENORM_MAPPING','POLYMORPHIC_MAPPING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `source_table_filter_expr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fact_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `source_target_table` (`source_table_id`,`fact_table_id`,`target_table_id`,`scope_id`) USING BTREE
) ENGINE=InnoDB;
CREATE TABLE `fact_kpis` (
  `column_id` int NOT NULL,
  `table_id` int NOT NULL,
  `expression` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('MAP','INC_REDUCE','NON_INC_REDUCE','NON_INC_RANK','SUMMARY') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_reversible` tinyint(1) NOT NULL,
  `primary_key_level` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int NOT NULL DEFAULT '-1000',
  `last_computed_on` timestamp NULL DEFAULT NULL,
  `added_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_str` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`column_id`,`scope_id`,`table_id`)
) ENGINE=InnoDB;

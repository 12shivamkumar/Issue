CREATE TABLE `fact_table_run_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_id` int NOT NULL,
  `table_type` enum('FACT','SUMMARY') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_full_run` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
CREATE TABLE `fact_context` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fact_table_id` int NOT NULL,
  `context_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `derive_expresion` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fact_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fact_context_key` (`fact_table_id`,`context_key`)
) ENGINE=InnoDB;
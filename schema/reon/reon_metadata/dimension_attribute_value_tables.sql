CREATE TABLE `dimension_attribute_value_tables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_prefix` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope` enum('CAP','VERTICAL','ORG') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_id` (`scope`,`table_prefix`)
) ENGINE=InnoDB;
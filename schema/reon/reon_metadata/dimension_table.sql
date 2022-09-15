CREATE TABLE `dimension_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope` enum('CAP','VERTICAL','ORG') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `dim_type` enum('STANDARD_CONSTANT','STANDARD','USER_DEFINED','SRC_DEFINED','EXTERNAL_SRC') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `structure_type` enum('FLAT','HIERARCHICAL','SCD') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_large` tinyint(1) NOT NULL DEFAULT '0',
  `is_elastic_indexed` tinyint NOT NULL DEFAULT '0',
  `is_storage_fragmented` tinyint(1) NOT NULL,
  `added_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `auto_update_cols` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_update_cols_str` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dim_table_name` (`name`)
) ENGINE=InnoDB;
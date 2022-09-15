CREATE TABLE `dimension_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope` enum('CAP','VERTICAL','ORG') COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `dim_type` enum('STANDARD_CONSTANT','STANDARD','USER_DEFINED','SRC_DEFINED','EXTERNAL_SRC') COLLATE utf8mb4_unicode_ci NOT NULL,
  `structure_type` enum('FLAT','HIERARCHICAL','SCD') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_large` tinyint(1) NOT NULL DEFAULT '0',
  `is_elastic_indexed` tinyint(4) NOT NULL DEFAULT '0',
  `is_storage_fragmented` tinyint(1) NOT NULL,
  `added_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `auto_update_cols` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dim_table_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

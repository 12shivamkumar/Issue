CREATE TABLE `data_location_source` (
  `id` int NOT NULL AUTO_INCREMENT,
  `run_id` int NOT NULL,
  `run_date` datetime NOT NULL,
  `org_id` int DEFAULT '-1',
  `table_id` int NOT NULL DEFAULT '-1',
  `table_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `db_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `endpoint_id` int NOT NULL DEFAULT '-1',
  `create_table_schema` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_point_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `table_location` (`org_id`,`table_id`,`run_id`)
) ENGINE=InnoDB;
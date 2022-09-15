CREATE TABLE `logical_view_column_definition` (
  `column_id` int NOT NULL AUTO_INCREMENT,
  `view_id` int NOT NULL,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `select_col_id` int NOT NULL,
  `alias` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dim_table_id` int DEFAULT NULL,
  `dim_col_id` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `select_col_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dim_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dim_col_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB;
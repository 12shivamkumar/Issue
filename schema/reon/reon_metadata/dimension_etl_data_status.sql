CREATE TABLE `dimension_etl_data_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `dim_table_id` int NOT NULL DEFAULT '-1000',
  `value_id` int NOT NULL,
  `value_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dim_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
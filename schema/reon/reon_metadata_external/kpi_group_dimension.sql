CREATE TABLE `kpi_group_dimension` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dimension_id` int NOT NULL,
  `dim_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dim_attr_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `added_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dimension_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_dim` (`dimension_id`,`dim_attr_name`,`scope_id`)
) ENGINE=InnoDB;
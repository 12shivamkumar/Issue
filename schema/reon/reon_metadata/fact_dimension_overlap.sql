CREATE TABLE `fact_dimension_overlap` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fact_table_id` int NOT NULL,
  `dim_id` int NOT NULL,
  `overlap_on_id` int NOT NULL,
  `overlap_on_type` enum('PK','DIMENSION') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dim_col_id` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `fact_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dim_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overlap_on_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dim_col_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fact_dim_overlapcol` (`fact_table_id`,`dim_id`,`overlap_on_id`,`overlap_on_type`)
) ENGINE=InnoDB;
CREATE TABLE `logical_view` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `src_table_type` enum('FACT','DIMENSION') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `select_table_id` int NOT NULL,
  `view_pk_cols` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int NOT NULL DEFAULT '-1000',
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `select_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_pk_cols_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
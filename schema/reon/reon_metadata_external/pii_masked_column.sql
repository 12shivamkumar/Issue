CREATE TABLE `pii_masked_column` (
  `id` int NOT NULL AUTO_INCREMENT,
  `column_type` enum('FLAT','HIERARCHICAL','FACT','CUSTOM','SCD') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_id` int NOT NULL,
  `column_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `masking_type` enum('SHOW_LAST_THREE','COMPLETE_MASK','NONE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
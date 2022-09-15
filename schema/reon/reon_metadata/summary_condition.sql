CREATE TABLE `summary_condition` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tableType` enum('FACT','DIMENSION','SUMMARY') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `refTableId` int NOT NULL COMMENT 'in case of dimension type it is logical',
  `column_id` int NOT NULL,
  `operator` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refTableId_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
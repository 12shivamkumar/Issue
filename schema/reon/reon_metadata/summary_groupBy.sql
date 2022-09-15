CREATE TABLE `summary_groupBy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tableType` enum('FACT','DIMENSION') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `refTableId` int NOT NULL COMMENT 'in case of dimension type it is logical',
  `column_id` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refTableId_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
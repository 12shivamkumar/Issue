CREATE TABLE `summary_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_date_key` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_date_key_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
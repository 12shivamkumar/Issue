CREATE TABLE `source_data_dump` (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_id` int NOT NULL,
  `org_id` int NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
CREATE TABLE `mongo_source_tables` (
  `source_table_id` int NOT NULL,
  `mongo_collection_id` int NOT NULL,
  `lateral_view_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json blob to mention the data type details',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `source_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mongo_collection_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`source_table_id`)
) ENGINE=InnoDB;
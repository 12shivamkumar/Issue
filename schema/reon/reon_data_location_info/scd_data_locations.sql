CREATE TABLE `scd_data_locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `added_on` timestamp NULL DEFAULT NULL,
  `org_id` int DEFAULT NULL,
  `dim_column_id` int NOT NULL,
  `dim_table_id` int NOT NULL,
  `table_name` varchar(100) DEFAULT NULL,
  `create_table_schema` text,
  `path` text,
  `type` enum('VERSION','COMPACTED') DEFAULT 'VERSION',
  `is_valid` tinyint(1) DEFAULT '1',
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dim_column_id_str` varchar(200) NOT NULL,
  `dim_table_id_str` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name_idx` (`table_name`),
  KEY `org_dim_table_column_is_alid` (`org_id`,`dim_table_id`,`dim_column_id`,`is_valid`)
) ENGINE=InnoDB;
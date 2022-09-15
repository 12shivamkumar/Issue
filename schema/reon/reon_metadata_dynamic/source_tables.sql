CREATE TABLE `source_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `scope_id` int(11) DEFAULT '-1000',
  `end_point_id` int(11) NOT NULL,
  `is_sharded` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `partition_key_column` int(11) DEFAULT NULL COMMENT 'NULL IF THERE IS NO PARTITION KEY',
  `timestamp_column` int(11) DEFAULT NULL,
  `pkey_columns` varchar(45) DEFAULT NULL,
  `filter_expression` text,
  `is_hive_table_enabled` tinyint(11) DEFAULT '1',
  `has_dynamic_schema` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_end_point` (`name`,`end_point_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

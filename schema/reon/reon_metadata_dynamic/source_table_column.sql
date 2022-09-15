CREATE TABLE `source_table_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(99) NOT NULL,
  `data_type` varchar(64) NOT NULL,
  `type_metadata` longtext,
  `table_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `scope_id` int(11) DEFAULT '-1000',
  `is_optional_column` tinyint(1) NOT NULL DEFAULT '0',
  `default_value` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_col_name` (`table_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

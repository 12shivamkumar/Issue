CREATE TABLE `logical_view_column_definition` (
  `column_id` int(11) NOT NULL AUTO_INCREMENT,
  `view_id` int(11) NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `select_col_id` int(11) NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dim_table_id` int(11) DEFAULT NULL,
  `dim_col_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

CREATE TABLE `summary_table_column_definition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `column_id` int(11) NOT NULL,
  `logical_summary_table_id` int(11) NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `src_table_type` enum('FACT','SUMMARY') NOT NULL,
  `select_table_id` int(11) NOT NULL,
  `select_col_id` int(11) NOT NULL,
  `udaf` text NOT NULL,
  `filters` text,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `column_scope` (`column_id`,`scope_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

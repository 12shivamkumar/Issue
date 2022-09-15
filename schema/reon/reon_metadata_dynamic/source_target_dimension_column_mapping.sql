CREATE TABLE `source_target_dimension_column_mapping` (
  `table_mapping_id` int(11) NOT NULL,
  `source_column_id` int(11) NOT NULL,
  `dimension_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_joining_required` tinyint(1) NOT NULL,
  `dim_table_id` int(11) NOT NULL,
  `join_col_id` int(11) NOT NULL,
  `select_col_id` int(11) NOT NULL,
  `value_mappings` text NOT NULL,
  PRIMARY KEY (`table_mapping_id`,`dimension_id`,`scope_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

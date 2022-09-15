CREATE TABLE `union_mapping` (
  `table_mapping_id` int(11) NOT NULL,
  `target_diff_column_id` int(11) NOT NULL,
  `diff_column_value` varchar(99) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_dynamic_partition` tinyint(1) NOT NULL,
  PRIMARY KEY (`table_mapping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

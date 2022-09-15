CREATE TABLE `logical_summary_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `summary_table_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `group_by_cols` text NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `primary_date_key` varchar(100) DEFAULT NULL,
  `partition_keys` varchar(200) DEFAULT NULL,
  `apply_standard_filters` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

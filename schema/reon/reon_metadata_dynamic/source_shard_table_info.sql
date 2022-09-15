CREATE TABLE `source_shard_table_info` (
  `table_id` int(11) NOT NULL,
  `end_point_id` int(11) NOT NULL,
  `from_table` varchar(100) NOT NULL,
  `select_column` varchar(100) DEFAULT NULL,
  `is_table_sharded` tinyint(1) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

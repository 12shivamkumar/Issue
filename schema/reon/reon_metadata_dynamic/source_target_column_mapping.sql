CREATE TABLE `source_target_column_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_mapping_id` int(11) NOT NULL,
  `source_column_id` int(11) NOT NULL,
  `target_column_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mapping_target_table` (`table_mapping_id`,`target_column_id`,`scope_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

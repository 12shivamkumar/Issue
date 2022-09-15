CREATE TABLE `source_target_table_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fact_table_id` int(11) NOT NULL,
  `source_table_id` int(11) NOT NULL,
  `source_table_type` enum('SOURCE','LOGICAL') NOT NULL DEFAULT 'SOURCE',
  `target_table_id` int(11) NOT NULL,
  `target_table_type` enum('TARGET','LOGICAL') NOT NULL DEFAULT 'TARGET',
  `mapping_type` enum('ONE_TO_ONE','UNION_MAPPING','DENORM_MAPPING','POLYMORPHIC_MAPPING') DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `source_table_filter_expr` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `source_target_table` (`source_table_id`,`fact_table_id`,`target_table_id`,`scope_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

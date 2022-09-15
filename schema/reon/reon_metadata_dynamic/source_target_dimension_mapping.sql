CREATE TABLE `source_target_dimension_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_table_id` int(11) NOT NULL,
  `fact_table_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `source_table_id` (`source_table_id`,`fact_table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

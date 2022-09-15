-- start  schema : `external_measure_source_column_mapping`
CREATE TABLE `external_measure_source_column_mapping` (
  `id` varchar(200) NOT NULL,
  `fact_name` varchar(100) NOT NULL,
  `fact_column_id` varchar(200) NOT NULL,
  `source_column_name` varchar(200) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `version` bigint(20) NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mapping_target_table` (`fact_column_id`,`source_column_name`) USING BTREE,
  KEY `fact_idx` (`is_active`,`fact_name`,`version`, `scope_id`)
);

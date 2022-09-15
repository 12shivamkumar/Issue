-- start  schema : `external_dimension_source_column_mapping`
CREATE TABLE `external_dimension_source_column_mapping` (
  `id` varchar(200) NOT NULL,
  `fact_name` varchar(100) NOT NULL,
  `dimension_column_link` varchar(200) NOT NULL,
  `source_column_name` varchar(200) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `version` bigint(20) NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_joining_required` tinyint(1) NOT NULL,
  `dim_table_name` varchar(100) NOT NULL,
  `join_col_name` varchar(100) NOT NULL,
  `select_col_name` varchar(100) NOT NULL,
  `formatter_info` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fact_idx` (`is_active`,`fact_name`,`version`,`scope_id`)
);

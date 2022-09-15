-- start  Schema : `external_fact_data_location`
CREATE TABLE `external_fact_data_location` (
  `id` varchar(200) NOT NULL,
  `fact_name` varchar(100) NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `run_id` int(11) NOT NULL DEFAULT '-1000',
  `s3_path` text NOT NULL,
  `create_table_schema` text NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_full_run` tinyint(1) NOT NULL,
  `partition_value` varchar(150) NOT NULL,
  PRIMARY KEY (`fact_name`,`run_id`,`scope_id`,`partition_value`) USING BTREE
);

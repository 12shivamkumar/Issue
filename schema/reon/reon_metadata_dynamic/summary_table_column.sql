CREATE TABLE `summary_table_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `logical_summary_table_id` int(11) NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `data_type` enum('INT','BIGINT','DOUBLE','TEXT') NOT NULL,
  `col_type` enum('MEASURE','DIMENSION','FACT_REFERENCE','PARTITION_KEY','DUMP_DATA') NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

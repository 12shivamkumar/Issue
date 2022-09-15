CREATE TABLE `fact_table_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fact_table_id` int(11) NOT NULL,
  `name` varchar(99) NOT NULL,
  `data_type` enum('INT','BIGINT','DOUBLE','TEXT') NOT NULL,
  `ordinal_position` int(11) NOT NULL DEFAULT '1',
  `column_type` enum('PK','CONSTANT_PK','SRC_MEASURE','COMPUTED_MEASURE','DIMENSION','COMPUTED_DIMENSION','FACT_REFERENCE','PARTITION_KEY','DUMP_DATA','ETL_ONLY_DIMENSION','DIM_PK') NOT NULL,
  `meta` varchar(99) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `functional_dependency_keys` varchar(100) DEFAULT NULL,
  `added_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fact_pk` (`fact_table_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

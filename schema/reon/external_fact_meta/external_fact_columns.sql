-- start  Schema : `external_fact_columns`
CREATE TABLE `external_fact_columns` (
  `id` varchar(200) NOT NULL,
  `fact_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `data_type` enum('INT','BIGINT','DOUBLE','TEXT') NOT NULL,
  `ordinal_position` int(11) NOT NULL DEFAULT '1',
  `column_type` enum('PK','CONSTANT_PK','SRC_MEASURE','COMPUTED_MEASURE','DIMENSION','COMPUTED_DIMENSION','FACT_REFERENCE','PARTITION_KEY','DUMP_DATA','ETL_ONLY_DIMENSION','DIM_PK') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `version` bigint(20) NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `functional_dependency_keys` varchar(100) DEFAULT NULL,
  `added_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fact_pk` (`fact_id`,`name`)
);

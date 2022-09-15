CREATE TABLE `fact_table_standard_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `fact_table_id` int(11) NOT NULL,
  `tableType` enum('FACT','DIMENSION','SUMMARY') NOT NULL,
  `refTableId` int(11) NOT NULL COMMENT 'in case of dimension type it is logical',
  `column_id` int(11) NOT NULL,
  `operator` varchar(10) DEFAULT NULL,
  `condition_value` text,
  `is_active` tinyint(1) NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fact_dim_dimcol_scope` (`fact_table_id`,`tableType`,`refTableId`,`column_id`,`scope_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

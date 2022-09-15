CREATE TABLE `transpose_tables` (
  `transposed_table_id` int(11) NOT NULL COMMENT 'final table',
  `source_table_id` int(11) DEFAULT NULL COMMENT 'initial table',
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `is_active` int(11) DEFAULT '1',
  PRIMARY KEY (`transposed_table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

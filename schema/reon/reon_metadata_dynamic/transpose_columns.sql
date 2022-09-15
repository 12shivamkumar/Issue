CREATE TABLE `transpose_columns` (
  `transposed_column_id` int(11) NOT NULL,
  `transpose_table_id` int(11) NOT NULL,
  `source_column_id` int(11) DEFAULT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `is_active` int(11) DEFAULT '1',
  `column_type` enum('GROUPING','MAP','TRANSPOSE') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conditions` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`transposed_column_id`,`scope_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

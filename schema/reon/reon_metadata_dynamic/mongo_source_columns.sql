CREATE TABLE `mongo_source_columns` (
  `source_column_id` int(11) NOT NULL,
  `source_table_id` int(11) NOT NULL,
  `expression` text NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  PRIMARY KEY (`source_column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

CREATE TABLE `mongo_source_tables` (
  `source_table_id` int(11) NOT NULL,
  `mongo_collection_id` int(11) NOT NULL,
  `lateral_view_info` text NOT NULL COMMENT 'json blob to mention the data type details',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`source_table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

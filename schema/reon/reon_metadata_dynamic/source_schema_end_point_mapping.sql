CREATE TABLE `source_schema_end_point_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `db_name` varchar(99) DEFAULT NULL,
  `end_point_name` varchar(99) NOT NULL,
  `dialect` enum('MYSQL','SPARK','MONGO','ES') NOT NULL DEFAULT 'MYSQL',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`end_point_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

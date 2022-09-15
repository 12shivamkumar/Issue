CREATE TABLE `mongo_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `end_point_id` int(11) NOT NULL,
  `is_sharded` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timestamp_column` varchar(64) NOT NULL,
  `pkey_columns` varchar(45) DEFAULT NULL,
  `primary_mongo_struct_id` int(11) NOT NULL,
  `dependent_struct_ids` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_end_point` (`name`,`end_point_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46

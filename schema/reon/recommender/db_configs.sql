CREATE TABLE `db_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `shard_service` varchar(100) NOT NULL,
  `dbase` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_id` (`org_id`)
);
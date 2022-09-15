

CREATE TABLE `cf_transform_scheduler_stats` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `cf_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `count_picked` bigint(20) NOT NULL,
  `count_transformed` bigint(20) NOT NULL,
  `count_processed` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`time`)
) 


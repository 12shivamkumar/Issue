

CREATE TABLE `org_profiler` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `org_id` int(20) DEFAULT NULL,
  `profile_type` varchar(100) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `last_updated_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `start_date` varchar(50) DEFAULT NULL,
  `end_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 ;


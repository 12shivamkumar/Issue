

CREATE TABLE `mobile_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` bigint(20) NOT NULL,
  `segment_id` int(11) NOT NULL,
  `delivery_stats` varchar(256) NOT NULL,
  `last_success_on` datetime DEFAULT NULL,
  `last_failed_on` datetime DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`)
) 


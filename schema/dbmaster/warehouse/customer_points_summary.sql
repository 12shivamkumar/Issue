

CREATE TABLE `customer_points_summary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL DEFAULT '0',
  `program_id` int(11) NOT NULL,
  `enrollment_id` bigint(20) NOT NULL DEFAULT -1 COMMENT 'entity enrollment id in program',
  `customer_id` int(11) NOT NULL COMMENT 'customer whose points summary is being tracked',
  `points_category_id` int(11) NOT NULL COMMENT 'category for the points',
  `current_points` decimal(15,3) NOT NULL,
  `cumulative_points` decimal(15,3) NOT NULL,
  `cumulative_purchases` decimal(15,3) NOT NULL,
  `points_redeemed` decimal(15,3) NOT NULL,
  `points_expired` decimal(15,3) NOT NULL,
  `points_returned` decimal(15,3) NOT NULL,
  `backlog_points` decimal(15,3) DEFAULT NULL,
  `reissued_points` decimal(15,3) DEFAULT NULL,
  `last_awarded_on` datetime DEFAULT NULL COMMENT 'When the last time the point was awarded',
  `last_updated_on` datetime NOT NULL,
  `last_updated_by_till` int(11) NOT NULL,
  `event_log_id` bigint(20) NOT NULL DEFAULT -1,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `program_id` (`org_id`,`program_id`,`customer_id`,`points_category_id`),
  KEY `enrollment_idx` (`org_id`, `enrollment_id`, `points_category_id`),
  KEY `org_auto_time_idx` (`org_id`,`auto_update_time`) ,
  KEY `event_log_idx` (`org_id`,`event_log_id`) ,
  KEY `auto_update_time` (`auto_update_time`) 
) ;




CREATE TABLE `reachability_job_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `bucket_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `status` enum('OPEN','PROCESSING','CLOSED','ERROR') COLLATE utf8mb4_unicode_ci NOT NULL,
  `recieved_time` datetime NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `expected_count` int(11) unsigned NOT NULL,
  `processed_count` int(11) unsigned DEFAULT '0',
  `submit_un_processed_to_wl` tinyint(1) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `recieved_time` (`recieved_time`),
  KEY `end_time` (`end_time`)
) 


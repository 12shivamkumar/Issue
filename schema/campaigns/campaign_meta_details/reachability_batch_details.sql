

CREATE TABLE `reachability_batch_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `status` enum('OPEN','QUEUED','PROCESSING','CLOSED','ERROR') COLLATE utf8mb4_unicode_ci DEFAULT 'OPEN',
  `start_index` int(11) NOT NULL,
  `end_index` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `expected_count` int(11) unsigned NOT NULL,
  `processed_count` int(11) unsigned DEFAULT NULL,
  `wl_job_id` int(11) NOT NULL DEFAULT '-1',
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`),
  KEY `status` (`status`),
  KEY `wl_job_id` (`wl_job_id`)
) 




CREATE TABLE `create_audience_job_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PROCESSING','SUCCESS','ERROR') COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `time_idx` (`auto_update_time`),
  KEY `org_job_index` (`org_id`,`job_id`),
  KEY `job_status_idx` (`job_id`,`status`)
) 


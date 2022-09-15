CREATE TABLE `bulk_job_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_run_time` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `activity_name` (`activity_name`)
) 

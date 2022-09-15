CREATE TABLE `executions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `job_id` bigint(20) NOT NULL,
  `query` text NOT NULL,
  `status` enum('SUCCESS','IN_PROGRESS','FAILED') NOT NULL,
  `target_s3_location` text NOT NULL,
  `trigger_time` datetime NOT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`)
) ;
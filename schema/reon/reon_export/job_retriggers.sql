
-- start  Schema : job_retriggers

 CREATE  TABLE `job_retriggers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `job_group_id` bigint(20) NOT NULL,
  `status` enum('OPEN','IN_PROGRESS','SUCCESS','FAILED', 'IGNORED') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_on` datetime NOT NULL,
  `started_at` datetime DEFAULT NULL COMMENT 'when status changed from OPEN to IN_PROGRESS',
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `priority` tinyint(3) NOT NULL,
  `org_sync_check_unique_id` varchar(50) DEFAULT NULL,
  `failure_reason` TEXT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `execution` (`status`,`org_id`,`job_group_id`)
)   COLLATE=utf8mb4_unicode_ci;


-- end  Schema : job_retriggers


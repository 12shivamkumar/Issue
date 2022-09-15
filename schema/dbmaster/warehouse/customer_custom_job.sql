CREATE TABLE `customer_custom_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `type` enum('POINTS_EXPIRY_EXTENSION') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('OPEN','IN_PROGRESS','SUCCESS','FAILED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` mediumtext COLLATE utf8mb4_unicode_ci,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_customer_job` (`org_id`,`customer_id`, `type`, `status`),
  KEY `idx_org_job_status` (`org_id`, `type`, `status`),
  KEY `auto_update_time` (`auto_update_time`)
);
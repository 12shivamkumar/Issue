

CREATE TABLE `aggregation_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) unsigned NOT NULL,
  `message_id` bigint(20) unsigned NOT NULL,
  `batch_start_id` int(11) NOT NULL DEFAULT '-1',
  `job_type` enum('COUPON_REVOKE','LIST_DELETE','COUPON_ISSUED','LIST_PUBLISHED','POST_PROCESS','SOCIAL_ADSET','AD_CREATION') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_status` enum('PROCESSING','DONE','ERROR') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `retrial_count` int(11) unsigned DEFAULT '0',
  `start_time` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `message_id` (`message_id`,`job_type`)
) 


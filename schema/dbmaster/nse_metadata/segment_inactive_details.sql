

CREATE TABLE `segment_inactive_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `segment_id` bigint(20) NOT NULL,
  `elastic_delete_status` enum('PENDING','IN_PROGRESS','DONE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `elastic_delete_task_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `segment` (`id`,`segment_id`)
) ;


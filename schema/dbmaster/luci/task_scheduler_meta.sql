CREATE TABLE `task_scheduler_meta` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `scheduler_type` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduler_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `bill_id` bigint(20) DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_scheduler_idx` (`org_id`,`scheduler_type`)
) ;
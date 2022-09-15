CREATE TABLE `lead_owner_changelog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `lead_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `assigned_to` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reassigned_to` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `org_lead` (`org_id`,`lead_id`),
  KEY `org_user_status` (`org_id`,`user_id`),
  KEY `auto_update_time` (`auto_update_time`)
);

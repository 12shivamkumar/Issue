CREATE TABLE `fleet_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `permission_value` tinyint(1) DEFAULT 1,
  `is_active` TINYINT DEFAULT 1,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `updated_by` int(11),
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `idx_role` (`org_id`,`role_id`)
) ;
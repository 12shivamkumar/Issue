CREATE TABLE `fleet_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `parent_user_id` int(11),
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  `default_child_user_id` int(11) DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `idx_user_id` (`org_id`,`user_id`),
  KEY `idx_parent_user_id` (`org_id`,`parent_user_id`),
  KEY `idx_role_id` (`org_id`,`role_id`)
);
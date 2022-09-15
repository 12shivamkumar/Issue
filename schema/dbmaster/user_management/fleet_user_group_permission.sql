CREATE TABLE `fleet_user_group_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `fleet_user_id` bigint(20) NOT NULL,
  `group_id` bigint(11) DEFAULT NULL,
  `permission` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11),
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `idx_user` (`org_id`,`fleet_user_id`,`group_id`)
);
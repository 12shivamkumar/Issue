CREATE TABLE `fleet_group_mapping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `fleet_user_id` bigint(20) NOT NULL,
  `is_primary_member` int(1) NOT NULL DEFAULT '0',
  `fleet_group_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `is_default` int(1) NOT NULL DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `idx_user_id` (`org_id`,`fleet_user_id`),
  KEY `idx_gp_id` (`org_id`,`fleet_group_id`)
);
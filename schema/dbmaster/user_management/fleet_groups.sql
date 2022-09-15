CREATE TABLE `fleet_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `org_id` int(11) NOT NULL,
  `external_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE', 'DELETED', 'INACTIVE') NOT NULL DEFAULT 'ACTIVE',
  `hierarchy_id` int(11) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
   max_group_size int(5) DEFAULT NULL,
   updated_by int(11) DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   life_time_purchases decimal DEFAULT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `idx_hierarchy_id` (`org_id`,`hierarchy_id`),
  KEY `idx_external_id` (`org_id`,`external_id`)
);
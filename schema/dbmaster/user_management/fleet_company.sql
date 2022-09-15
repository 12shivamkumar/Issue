  CREATE TABLE `fleet_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `name` mediumtext DEFAULT NULL,
  `external_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `fleet_hierarchy_id`  int(11) NOT NULL,
  `created_by`  int(11) NOT NULL,
  `updated_by`  int(11) ,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `auto_update_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `parent_id` int(11) DEFAULT NULL,
   PRIMARY KEY (`id`,`org_id`),
   KEY `externalId` (`org_id`,`external_id`),
   KEY `parent_id` (`org_id`,`parent_id`)
);
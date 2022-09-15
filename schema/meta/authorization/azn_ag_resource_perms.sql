CREATE TABLE `azn_ag_resource_perms`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `access_group_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `permission` enum('NONE', 'READ','WRITE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NONE',
  `is_active` tinyint(1) NOT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`, `org_id`),
  UNIQUE KEY `ag_resource_perms` (`org_id`, `access_group_id`, `resource_id`)
); -- has AUTO_INCREMENT = 5000. set in the bootstrap app reserving for system managed access group reource perms; 100 access group * 50 resources
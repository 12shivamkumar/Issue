CREATE TABLE `azn_ag_assignments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `access_group_id` int(11) NOT NULL,
  `assignment_level` enum('ORG_ENTITY_TYPE', 'ORG_ENTITY_ID') COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_entity_type` enum('STORE', 'TILL','STR_SERVER') COLLATE utf8mb4_unicode_ci NULL,
  `org_entity_id` int(11) NULL,
  `is_active` tinyint(1) NOT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`, `org_id`),
  KEY (`org_id`, `assignment_level`, `org_entity_id`)
);
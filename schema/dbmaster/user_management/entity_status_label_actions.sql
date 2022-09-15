CREATE TABLE `entity_status_label_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `action_code` varchar(50) NOT NULL,
  `action_value` tinyint(1) DEFAULT '1',
  `label_id` int(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_on` datetime NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `entity_status_id` (org_id,label_id,is_active)
)
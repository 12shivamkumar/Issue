

CREATE TABLE `extended_field_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) DEFAULT NULL,
  `extended_field_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hide_display` tinyint(1) DEFAULT '0',
  `is_mandatory` tinyint(1) DEFAULT '0',
  `is_updatable` tinyint(1) DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `default_value` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_compute_enabled` tinyint(1) DEFAULT '0',
  `function_id` int(11) DEFAULT NULL,
  `is_audit_trail_enabled` tinyint(1) DEFAULT '0',

  PRIMARY KEY (`id`)
) 


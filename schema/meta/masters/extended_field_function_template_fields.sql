
CREATE TABLE `extended_field_function_template_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `field_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `entity_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `function_id` int(11) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `extended_field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_id_field_functionId` (`org_id`,`field_id`,`function_id`)
)

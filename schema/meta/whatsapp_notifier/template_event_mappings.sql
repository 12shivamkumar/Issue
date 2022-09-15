CREATE TABLE `template_event_mappings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_enabled` tinyint(1) NOT NULL,
  `event_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_policy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_template_event_whatsapp_map` (`template_id`,`whatsapp_id`,`event_id`),
  KEY `fk_event_id` (`event_id`),
  KEY `fk_whatsapp_id` (`whatsapp_id`)
);
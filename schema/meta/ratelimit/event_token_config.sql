

CREATE TABLE `event_token_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_value` int(11) NOT NULL,
  `last_changed_date` datetime NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) 


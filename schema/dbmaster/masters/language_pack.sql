CREATE TABLE `language_pack` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `language_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `entity_data_id` int(11) DEFAULT NULL,
  `is_approved` tinyint(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `language_code` (`language_code`),
  KEY `entity_data_id` (`entity_data_id`)
);
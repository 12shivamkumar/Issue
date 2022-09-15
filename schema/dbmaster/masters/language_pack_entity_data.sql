CREATE TABLE `language_pack_entity_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `data` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_identifier` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unique_identifier` (`unique_identifier`)
);
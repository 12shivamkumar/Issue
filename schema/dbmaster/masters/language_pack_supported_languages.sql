CREATE TABLE `language_pack_supported_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `language_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `language_code` (`language_code`)
);


CREATE TABLE `skipped_error_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `error_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionMessage` varchar(250) COLLATE utf8mb4_unicode_ci,
  `is_replayable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) 


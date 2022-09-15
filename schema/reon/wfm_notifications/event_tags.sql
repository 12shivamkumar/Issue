-- start  Schema : `event_tags`
CREATE TABLE `event_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_type` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_type` enum('STRING','DATETIME','INT') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_type` (`event_type`)
);

CREATE TABLE `card_generation_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `series_id` int(11) NOT NULL,
  `prefix` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `suffix` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `offset` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `length` int(5) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_on` datetime NOT NULL,
  `type` enum('DEFAULT','LUHNAlGO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DEFAULT',
  PRIMARY KEY (`id`,`org_id`),
  KEY `series` (`org_id`,`series_id`),
  KEY `uuid` (`org_id`,`prefix`,`suffix`,`length`)
)
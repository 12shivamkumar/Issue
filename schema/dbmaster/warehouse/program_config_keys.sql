

CREATE TABLE `program_config_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_type` enum('STRING','NUMERIC','BOOL','LIST','MAP','RANGE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `key_name` (`name`)
) ;


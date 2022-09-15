

CREATE TABLE `verification_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) NOT NULL,
  `user_ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('MOBILE','EMAIL','USERNAME') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MOBILE',
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MOBILE',
  `verfication_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `number_of_times_reminded` tinyint(4) NOT NULL,
  `is_valid` tinyint(4) NOT NULL,
  `valid_till` datetime NOT NULL,
  `last_updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `identifier` (`identifier`,`verfication_code`),
  KEY `ref_id` (`ref_id`)
) 


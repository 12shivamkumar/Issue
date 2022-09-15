

CREATE TABLE `username_cart` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `reserverd_for` int(11) NOT NULL,
  `user_ip` int(11) unsigned NOT NULL,
  `user_cookie` int(11) unsigned NOT NULL,
  `type` enum('USERNAME','EMAIL','MOBILE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USERNAME',
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_valid` tinyint(4) NOT NULL,
  `reserved_till` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reserverd_for` (`reserverd_for`)
) 


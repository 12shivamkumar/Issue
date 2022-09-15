

CREATE TABLE `user_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_tag` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `added` datetime NOT NULL,
  `persistent` tinyint(1) NOT NULL DEFAULT '0',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id,key` (`user_id`,`key`)
) ;


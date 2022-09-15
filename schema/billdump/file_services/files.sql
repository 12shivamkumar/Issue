

CREATE TABLE `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `handle` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namespace` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `last_update_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_accessed_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `additional_info` mediumtext COLLATE utf8mb4_unicode_ci COMMENT 'Any additional info can be saved here',
  `acl` enum('PRIVATE','PUBLIC') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PRIVATE',
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`handle`),
  UNIQUE KEY `name_namespace` (`name`,`namespace`),
  KEY `namespace_id` (`namespace`)
)




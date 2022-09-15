

CREATE TABLE `extended_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'type of the field',
  `label` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` mediumtext COLLATE utf8mb4_unicode_ci COMMENT 'default values json converted array',
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) 


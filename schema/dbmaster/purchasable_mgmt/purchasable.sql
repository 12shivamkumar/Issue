

CREATE TABLE `purchasable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Used to identify in case it’s a feature',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'detailed description',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('FEATURE','CONSUMABLE','PACKAGE','PLAN','TOP_UP') COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'is this visible to all organizations / on the UI?',
  `params` mediumtext COLLATE utf8mb4_unicode_ci,
  `valid_from` datetime NOT NULL COMMENT 'An option to purchase after',
  `valid_till` datetime NOT NULL COMMENT 'An option to purchase before',
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `type` (`type`)
) ;


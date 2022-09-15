

CREATE TABLE `capping_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL DEFAULT '0',
  `context_id` int(11) DEFAULT NULL COMMENT 'rule to which capping should be applied to',
  `context_type` enum('RULE','RULESET','ORGCONFIG') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'RULE',
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the rule capping',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `class_name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'class of the capping',
  `is_active` tinyint(1) NOT NULL COMMENT 'Whether capping is active or not',
  `property_values` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_id` (`org_id`,`context_id`)
) ;


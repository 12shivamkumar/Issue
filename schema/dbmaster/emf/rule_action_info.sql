

CREATE TABLE `rule_action_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `case_action_list_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `case_action_list_id` (`org_id`,`case_action_list_id`)
) ;




CREATE TABLE `rule_case_action_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `rule_id` int(11) DEFAULT NULL,
  `case_id` int(11) NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`, `org_id`),
  KEY `id` (`org_id`,`rule_id`),
  KEY `auto_update_time` (`auto_update_time`)
) 


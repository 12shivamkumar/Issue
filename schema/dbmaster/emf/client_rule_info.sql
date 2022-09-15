

CREATE TABLE `client_rule_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  `last_updated` datetime NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `rule_version_index` (`org_id`,`rule_id`,`file_id`,`version`)
) ;


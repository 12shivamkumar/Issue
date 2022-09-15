CREATE TABLE rule_mapping (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`org_id` int(11) NOT NULL,
	`rule_info_id` int(11) NOT NULL COMMENT 'id from rule_info',
	`client` varchar(100) NOT NULL COMMENT 'name of client created this rule mapping',
	`external_id` varchar(100) COMMENT 'external id from client if provided',
	`is_active` tinyint(1) NOT NULL DEFAULT '1',
	`created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`),
  	KEY `mapping_idx` (`is_active`, `org_id`, `rule_info_id`),
  	KEY `latest_idx` (`org_id`, `is_active`, `created_on`)
);
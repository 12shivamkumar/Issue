CREATE TABLE rule_info (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`org_id` int(11) NOT NULL,
	`rule_json` mediumtext NOT NULL COMMENT 'rule dsl',
	`rule_hash` varchar(100) NOT NULL COMMENT 'hash computed for rule json object',
	`status` enum('READY', 'NOT_READY') NOT NULL DEFAULT 'READY' COMMENT 'what is current status of rule',
	`last_sync_time` datetime(3) COMMENT 'latest sync time at which data is available',
	`data_table` varchar(100) COMMENT 'table where latest computed data exists', 
	`created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`),
	KEY `rule_hash_idx` (`org_id`, `rule_hash`),
	KEY `org_last_update_idx` (`last_updated_on`, `org_id`)
);
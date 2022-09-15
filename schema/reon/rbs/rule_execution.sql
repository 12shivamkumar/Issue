CREATE TABLE rule_execution (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`org_id` int(11) NOT NULL,
	`rule_info_id` int(11) NOT NULL COMMENT 'id from rule_info table',
	`sync_id` varchar(50) NOT NULL COMMENT 'sync id or time from rule_info',
	`data_table` varchar(100) COMMENT 'table where data is present in mongo for successful executions',
	`status` enum('OPEN', 'IN_PROGRESS', 'FAILED', 'SUCCEEDED') NOT NULL COMMENT 'status of the execution',
	`created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`),
	KEY (`org_id`, `rule_info_id`, `sync_id`),
	KEY `status_idx` (`status`),
	KEY `org_last_update_idx` (`last_updated_on`, `org_id`),
	KEY `latest_for_rule_idx` (`org_id`, `rule_info_id`, `created_on`)
);
CREATE TABLE rule_execution_log (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`org_id` int(11) NOT NULL,
	`rule_execution_id` int(11) NOT NULL COMMENT 'id from rule_execution table',
	`service_name` varchar(50) NOT NULL DEFAULT 'RBS' COMMENT 'this log is created due to which service',
	`status` varchar(50) NOT NULL COMMENT 'current rule status from various down stream services',
	`created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`error_details` mediumtext COMMENT 'error message, stack trace, things like that..',
	PRIMARY KEY (`id`),
	KEY `execution_idx` (`org_id`, `rule_execution_id`),
	KEY `org_append_idx` (`created_on`, `org_id`)
);
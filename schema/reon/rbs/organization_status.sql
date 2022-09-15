CREATE TABLE organization_status (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`org_id` int(11) NOT NULL,
	`is_active` tinyint(1) NOT NULL DEFAULT '1',
	`created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`),
  	UNIQUE KEY `org` (`org_id`)
);
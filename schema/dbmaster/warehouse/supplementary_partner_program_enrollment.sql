CREATE TABLE supplementary_partner_program_enrollment(
	`id` bigint(20) NOT NULL AUTO_INCREMENT, 
	`org_id` int(11) NOT NULL, 
	`loyalty_program_id` int(11) NOT NULL, 
	`partner_program_id` int(11) NOT NULL, 
	`customer_id` int(11) NOT NULL, 
	`is_linked` tinyint(1) NOT NULL, 
	`is_active` tinyint(1) DEFAULT 1 NOT NULL, 
	`event_log_id` bigint(20) DEFAULT -1 NOT NULL, 
	`membership_start_date` datetime NOT NULL, 
	`membership_end_date` datetime NOT NULL, 
	`created_on` datetime NOT NULL, 
	`created_by` varchar(36) NOT NULL DEFAULT -1,
	`auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`,`org_id`),
	UNIQUE KEY `sppe_unq_idx` (`org_id`,`loyalty_program_id`, `customer_id`, `partner_program_id`),
  	KEY `org_auto_time_idx` (`org_id`,`auto_update_time`),
  	KEY `auto_time_idx` (`auto_update_time`)
);
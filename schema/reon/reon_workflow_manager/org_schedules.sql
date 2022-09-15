CREATE TABLE org_schedules (
	id INT(11) NOT NULL AUTO_INCREMENT,
	org_id INT(11) NOT NULL,
	type ENUM('FULL_RUN') NOT NULL COMMENT 'type of the schedule',
	schedule_date DATE NOT NULL COMMENT 'date on which org is scheduled',
	creation_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'date on which the schedule is created',
	is_active TINYINT(1) NOT NULL COMMENT 'whether the schedule is active or not',
	additional_details TEXT COMMENT 'any dynamic details about schedule',
	PRIMARY KEY (`id`),
	KEY org_type_idx (`type`, `org_id`),
	KEY schedule_type_idx (`schedule_date`, `type`, `org_id`)
);

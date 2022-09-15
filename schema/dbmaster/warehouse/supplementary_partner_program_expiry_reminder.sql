CREATE TABLE supplementary_partner_program_expiry_reminder (
	id int(11) AUTO_INCREMENT, 
	org_id int(11) NOT NULL, 
	loyalty_program_id int(11) NOT NULL, 
	partner_program_id int(11) NOT NULL, 
	days_in_expiry_reminder int(11) NOT NULL, 
	communication_property_values mediumtext DEFAULT NULL , 
	created_on DATETIME NOT NULL,
	auto_update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	PRIMARY KEY (id, org_id),
	KEY org_spp_auto_time_idx (org_id, auto_update_time)
);

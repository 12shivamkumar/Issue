CREATE TABLE historical_points_ledger_custom_fields(
	id int primary key auto_increment,
	org_id bigint(11) NOT NULL,
	field_name varchar(200) NOT NULL,
	is_active tinyint(1) DEFAULT 0,
	created_by int DEFAULT -1,
	created_on datetime NOT NULL,
	auto_update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);

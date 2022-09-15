CREATE table target_period_default_values(
id bigint(20) primary key auto_increment,
org_id bigint(20) NOT NULL,
target_rule_id bigint(20) NOT NULL,
target_period_id bigint(20) NOT NULL,
default_value DECIMAL(18,3) NOT NULL,
added_on timestamp NULL DEFAULT '0000-00-00 00:00:00',
added_by bigint(20) NOT NULL,
last_updated_on timestamp NULL DEFAULT '0000-00-00 00:00:00',
last_updated_by bigint(20) NOT NULL,
auto_update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
UNIQUE KEY user_id (`org_id`,`target_rule_id`,`target_period_id`));
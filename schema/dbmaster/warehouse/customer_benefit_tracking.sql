CREATE TABLE `customer_benefit_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `loyalty_program_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `benefit_id` int(11) NOT NULL COMMENT 'foreign key to benefits table id',
  `cycle_start_time` datetime NOT NULL,
  `cycle_end_time` datetime NOT NULL,
  `additional_value` bigint(20) NOT NULL DEFAULT 0 COMMENT 'additional value that can be availed on top of original value for this customer',
  `tracked_value` bigint(20) NOT NULL COMMENT 'tracked value for the benefit in this cycle',
  `previous_cycle_id` bigint(20) NOT NULL DEFAULT -1 COMMENT 'previous membership cycle of customer for a benefit',
  `created_on` datetime NOT NULL COMMENT 'Date of creation of cycle',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `benefit_idx` (`org_id`,`loyalty_program_id`,`customer_id`,`benefit_id`,`cycle_start_time`),
  KEY `auto_update_time_idx` (`auto_update_time`),
  KEY `org_auto_time_idx` (`org_id`,`auto_update_time`)
) ;

CREATE TABLE `customer_benefit_tracking_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `loyalty_program_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `benefit_id` int(11) NOT NULL COMMENT 'foreign key to benefits table id',
  `customer_benefit_tracking_id` bigint(20) NOT NULL COMMENT 'foreign key to customer_benefit_tracking id',
  `type` enum('CREDIT','DEBIT') COMMENT 'specifies if tracked_value is incremental or decremental',
  `tracked_value` bigint(20) NOT NULL COMMENT 'tracked value',
  `event_log_id` bigint(20) NOT NULL,
  `entity_type` enum('BILL') NOT NULL DEFAULT 'BILL',
  `entity_id` bigint(20) NOT NULL DEFAULT -1,
  `created_on` datetime NOT NULL COMMENT 'Date of creation of this entry',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `benefit_idx` (`org_id`,`loyalty_program_id`,`customer_id`,`benefit_id`,`created_on`),
  KEY `auto_update_time_idx` (`auto_update_time`),
  KEY `org_auto_time_idx` (`org_id`,`auto_update_time`)
) ;

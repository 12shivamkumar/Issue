

CREATE TABLE `customer_enrollment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'program enrollment id',
  `org_id` int(11) NOT NULL DEFAULT '0',
  `program_id` int(11) NOT NULL COMMENT 'program id of the enrollment',
  `customer_id` int(11) NOT NULL,
  `entity_type` enum('CUSTOMER','FLEET') DEFAULT 'CUSTOMER',
  `is_active` tinyint(1) NOT NULL COMMENT 'whether the enrollment is active',
  `current_slab_id` int(11) NOT NULL COMMENT 'slab under which the customer currently belongs to',
  `lifetime_purchases` decimal(15,3) NOT NULL DEFAULT '0.000',
  `visits` int(11) NOT NULL DEFAULT '0',
  `enrollment_date` datetime NOT NULL,
  `termination_date` datetime DEFAULT NULL,
  `last_slab_change_date` datetime NOT NULL,
  `slab_expiry_date` datetime DEFAULT '2114-12-31 23:59:59' COMMENT 'expected expiry date of the tier',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `event_log_id` bigint(20) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `program_id_idx` (`org_id`,`program_id`,`customer_id`,`entity_type`),
  KEY `idx_program_id_expiry_date_customer_id` (`program_id`,`slab_expiry_date`,`customer_id`),
  KEY `org_auto_time_idx` (`org_id`,`auto_update_time`) ,
  KEY `event_log_idx` (`org_id`,`event_log_id`) ,
  KEY `auto_update_time` (`auto_update_time`) 
) ;


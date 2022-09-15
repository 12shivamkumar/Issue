

CREATE TABLE `vouchers_issued` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `event_type_id` int(11) NOT NULL COMMENT 'ID of the Event Type',
  `source_type_id` int(11) NOT NULL,
  `source_id` bigint(20) NOT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `voucher_series_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `issued_date` datetime NOT NULL,
  `till_id` int(11) NOT NULL,
  auto_update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `program_id` (`program_id`,`customer_id`),
  INDEX auto_update_time (auto_update_time),
  INDEX org_auto_time_idx (org_id,auto_update_time)
) ;


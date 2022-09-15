

CREATE TABLE `loyalty_tracker` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  `num_bills` int(11) DEFAULT NULL,
  `tracker_date` date NOT NULL,
  `sales` float DEFAULT NULL,
  `footfall_count` int(11) DEFAULT NULL,
  `captured_regular_bills` int(11) DEFAULT NULL,
  `captured_not_interested_bills` int(11) DEFAULT NULL,
  `captured_enter_later_bills` int(11) DEFAULT NULL,
  `captured_pending_enter_later_bills` int(11) DEFAULT NULL,
  auto_update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_id` (`org_id`,`store_id`,`tracker_date`),
  INDEX auto_time_idx (auto_update_time)
) ;


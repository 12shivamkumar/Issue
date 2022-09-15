CREATE TABLE `create_coupons_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `coupon_series_id` int(11) NOT NULL,
  `total_create_coupons` int(11) NOT NULL,
  `current_create_coupons` int(11) NOT NULL DEFAULT '0',
  `job_status` enum('OPEN', 'RUNNING', 'COMPLETED', 'ERRORED') NOT NULL DEFAULT 'OPEN',
  `error_code` int(11) DEFAULT 0,
  `error_message` varchar(128) DEFAULT NULL,
  `context_id` varchar(100) NOT NULL,
  `push_to_queue` int(1) NOT NULL DEFAULT 0,
  `persist_for_days` int(11) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `auto_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `cpn_indx` (`org_id`,`coupon_series_id`, `context_id`),
  KEY `created_date_idx` (`created_date`)
) ;

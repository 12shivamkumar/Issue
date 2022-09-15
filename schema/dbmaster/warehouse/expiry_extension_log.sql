CREATE TABLE `expiry_extension_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `event_log_id` bigint(20) DEFAULT -1,
  `extended_expiry_time` datetime NOT NULL COMMENT 'New expiry date of rolling expiry type points',
  `is_return` tinyint(1) NOT NULL DEFAULT 0,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_customer` (`org_id`,`customer_id`,`event_log_id`),
  KEY `org_auto_time_idx` (`org_id`,`auto_update_time`),
  KEY `auto_update_time` (`auto_update_time`)
);
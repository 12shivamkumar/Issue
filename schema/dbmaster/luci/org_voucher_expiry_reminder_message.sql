CREATE TABLE `org_voucher_expiry_reminder_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `comm_identifier` varchar(20) NOT NULL,
  `template` mediumtext NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `updated_on` datetime NOT NULL,
  `active` tinyint(1) DEFAULT 1,
  `auto_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `notification_type` enum('SERIES_EXPIRY_REMINDER','COUPON_LIMIT_NOTIFY') COLLATE utf8mb4_unicode_ci DEFAULT 'SERIES_EXPIRY_REMINDER',
  PRIMARY KEY (`id`,`org_id`)
) ;



CREATE TABLE `bulk_activity_summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_unique_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'unique id assigned by publisher for each activity(eg:bulk points expiry reminder)',
  `org_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `program_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_name` enum('POINTS_EXPIRY_REMINDER','POINTS_EXPIRY','TIER_DOWNGRADE','TIER_DOWNGRADE_REMINDER','TRACK_CUSTOMER_KPI','RECALCULATE_EXPIRED_KPI','DELAYED_ACCRUAL_TO_REDEEMABLE','TIER_DOWNGRADE_ON_RETURN','PROMOTION_POINTS_EXPIRY_ADJUSTMENT','PARTNER_PROGRAM_EXPIRY_REMINDER','POINTS_LEDGER_BULK_JOB', 'LOYALTY_SLAB_EARLY_EXPIRY') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_customers` int(11) DEFAULT '0',
  `custom_data` mediumtext COLLATE utf8mb4_unicode_ci COMMENT 'program level summary specific to a activity(eg:bulk points expiry reminder)',
  `added_on` datetime DEFAULT NULL,
  `status` enum('INPROGRESS','FAILED','SUCCESS', 'PARTIAL_SUCCESS') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_message` mediumtext COLLATE utf8mb4_unicode_ci,
  `event_log_id` bigint(20) NOT NULL DEFAULT -1,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `event_unique_id` varchar(50) NOT NULL DEFAULT "",
  PRIMARY KEY (`id`,`org_id`),
  KEY `activity_unique_id` (`activity_unique_id`),
  KEY `org_auto_time_idx` (`org_id`,`auto_update_time`),
  KEY `event_log_idx` (`org_id`,`event_log_id`),
  KEY `auto_update_time` (`auto_update_time`)
) ;


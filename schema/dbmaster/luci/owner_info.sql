

CREATE TABLE `owner_info` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `coupon_series_id` int(11) NOT NULL,
  `owned_by` enum('NONE','LOYALTY','OUTBOUND','GOODWILL','DVS','TIMELINE','REFERRAL', 'JOURNEY') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NONE',
  `owner_id` int(11) NOT NULL DEFAULT '-1',
  `expiry_date` datetime DEFAULT NULL,
  `modified_by` bigint(20) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `owner_uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_id_coupon_series_id` (`org_id`,`coupon_series_id`),
  KEY `auto_update_time` (`org_id`,`auto_update_time`),
  KEY `expiry_date` (`org_id`,`expiry_date`),
  KEY `coupon_series_id_idx` (`org_id`,`coupon_series_id`,`owner_id`)
) ;



CREATE TABLE `coupons_created` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `coupon_code` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_series_id` int(11) NOT NULL,
  `series_expiry_date` datetime NOT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `campaigns_migrated_voucher_id` int(11) DEFAULT '-1',
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `is_queued` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_coupon_code` (`org_id`,`coupon_code`),
  KEY `last_updated_org_idx` (`last_updated_on`,`org_id`),
  KEY `org_series_idx` (`org_id`,`coupon_series_id`,`is_queued`)
) ;



CREATE TABLE `incentive_meta_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'incentive_type_id for each incentive',
  `incentive_type` enum('POINTS','COUPON','GENERIC') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `incentive_type` (`incentive_type`)
) ;


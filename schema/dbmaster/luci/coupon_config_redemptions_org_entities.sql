

CREATE TABLE `coupon_config_redemptions_org_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `coupon_series_id` int(11) NOT NULL COMMENT 'id of the campaigns.voucher_series table',
  `org_entity_type` enum('TILL','STORE','CONCEPT','ZONE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_entity_id` int(11) NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `updated_by` int(11) NOT NULL COMMENT 'user who updated the key',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `valid_coupon_series_entities` (`org_id`,`is_valid`,`coupon_series_id`),
  KEY `auto_update_time` (`auto_update_time`,`org_id`)
) ;




CREATE TABLE `coupon_series_audience_group` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `coupon_series_id` int(11) NOT NULL,
  `audience_group_id` int(11) NOT NULL,
  `audience_group_version_id` int(11) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `orgid_couponseries_idx` (`org_id`,`coupon_series_id`)
) ;


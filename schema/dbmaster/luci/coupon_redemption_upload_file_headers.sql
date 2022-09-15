
CREATE TABLE `coupon_redemption_upload_file_headers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `coupon_series_id` int(11) NOT NULL,
  `coupon_redemption_upload_id` int(11) NOT NULL,
  `column_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_number` int(11) NOT NULL,
  `auto_update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`, `org_id`),
  KEY `org_id_redemption_upload_id_series_id_idx` (`org_id` , `coupon_redemption_upload_id` , `coupon_series_id`),
  KEY `auto_update_time_idx` (`auto_update_time`)
) ;


CREATE TABLE `coupon_redemption_upload_summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `coupon_series_id` int(11) NOT NULL,
  `coupon_redemption_upload_id` int(11) NOT NULL,
  `start_id` int(11) NOT NULL,
  `end_id` int(11) NOT NULL,
  `batch_number` int(11) NOT NULL,
  `batch_size` int(11) NOT NULL,
  `batch_status` enum('SUCCESS','FAILED','PROCESSING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PROCESSING',
  `auto_update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`, `org_id`),
  KEY `org_series_redemption_upload_status_idx` (`org_id`, `coupon_series_id`, `coupon_redemption_upload_id`, `batch_status`),
  KEY `auto_update_time_idx` (`auto_update_time`)
) ;



CREATE TABLE `coupon_product_data_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_product_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `voucher_series_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_voucher_product_id_value` (`org_id`,`voucher_series_id`,`voucher_product_id`,`product_id`)
) ;

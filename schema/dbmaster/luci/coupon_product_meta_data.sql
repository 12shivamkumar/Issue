

CREATE TABLE `coupon_product_meta_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_type` (`product_type`)
) ;

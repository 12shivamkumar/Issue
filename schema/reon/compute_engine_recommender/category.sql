CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('SMS','PHONE','EMAIL','WECHAT','HOME_PAGE','PRODUCT_PAGE') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
);
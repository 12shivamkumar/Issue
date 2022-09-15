CREATE TABLE `product_description_meta_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(15) NOT NULL,
  `vertical` enum("movie", "f&b", "apparel", "hypermarket", "others") CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT "others",
  `custom_fileds_col` varchar(512) DEFAULT NULL,
  `rootCat_inventory_col` varchar(256) DEFAULT NULL,
  `leafCat_inventory_col` varchar(256) DEFAULT NULL,
  `rootCat_custom_inventory_col` varchar(256) DEFAULT NULL,
  `leafCat_custom_inventory_col` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
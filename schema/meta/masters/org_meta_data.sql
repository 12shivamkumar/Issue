CREATE TABLE `org_meta_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `vertical_id` int(11) NOT NULL,
  `finance_id` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_category` enum( "Demo", "Prod", "Test", "Automation", "Sales", "Development", "Temporary", "Others") COLLATE utf8mb4_unicode_ci NOT NULL,
  `cs_category` enum("A", "B", "C1", "C2") COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_unit` enum("India", "SEA", "EMEA", "China") COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_products` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_type`(`id`, `org_id`),
  KEY `index_type`(`org_id`, `vertical_id`)
)
CREATE TABLE `org_till_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) DEFAULT NULL,
  `org_type` enum('ECOM','INSTORE','PWA') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ECOM',
  `till_filter` enum('ENABLED','DISABLED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DISABLED',
  `till_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
   PRIMARY KEY (`id`)
);


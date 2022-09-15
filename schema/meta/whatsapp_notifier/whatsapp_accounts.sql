CREATE TABLE `whatsapp_accounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_enabled` tinyint(1) NOT NULL,
  `whatsapp_intouch_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_id` bigint(20) DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_org_id` (`org_id`)
);
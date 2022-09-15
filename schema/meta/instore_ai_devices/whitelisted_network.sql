CREATE TABLE `whitelisted_network` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(11) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  `till_id` bigint(20) NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_base_url` tinyint(1) NOT NULL,
  `api_url` tinyint(1) NOT NULL,
  `intouch_base_url` tinyint(1) NOT NULL,
  `storecare_base_url` tinyint(1) NOT NULL,
  `storecenter_base_url` tinyint(1) NOT NULL,
  `cap_apps_antivirus_block` tinyint(1) NOT NULL,
  `cap_apps_firewall_block` tinyint(1) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`, `org_id`)
)

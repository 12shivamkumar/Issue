

CREATE TABLE `org_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `gateway` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg_priority` enum('HIGH','DEFAULT','BULK') COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(3) NOT NULL,
  `campaign_id` bigint(20) NOT NULL DEFAULT '-1',
  `effective_start_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `effective_end_time` datetime NOT NULL DEFAULT '2100-01-01 00:00:00',
  `added_by` int(11) NOT NULL DEFAULT '0',
  `added_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `is_whitelisting_gateway` tinyint(1) NOT NULL DEFAULT '0',
  `subscription_parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`, org_id)
) 


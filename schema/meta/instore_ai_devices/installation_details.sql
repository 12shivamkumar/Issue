

CREATE TABLE `installation_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` bigint(20) NOT NULL,
  `org_id` bigint(11) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  `engagement_type` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_dispatched` datetime DEFAULT NULL,
  `date_installed` datetime DEFAULT NULL,
  `date_callback` datetime DEFAULT NULL,
  `device_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dispatch_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) DEFAULT '1',
  `store_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) ,
  KEY `org_id` (`org_id`) ,
  KEY `auto_update_time` (`auto_update_time`)
) 


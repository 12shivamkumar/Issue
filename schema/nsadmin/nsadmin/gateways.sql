

CREATE TABLE `gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection_properties` mediumtext COLLATE utf8mb4_unicode_ci,
  `service_url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_check_url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_class` enum('SMS','EMAIL','WECHAT','LINE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_priority` enum('HIGH','DEFAULT','BULK') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'HIGH',
  `channel_count` int(3) NOT NULL DEFAULT '1',
  `status` enum('ACTIVE','INACTIVE','DISABLED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `status_check_type` enum('PULL','PUSH','NONE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PULL',
  `properties` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `short_gateway_name` (`short_name`),
  KEY `host_name` (`host_name`),
  KEY `status` (`status`),
  KEY `status_check_type` (`status_check_type`),
  KEY `auto_update_time` (`auto_update_time`)
) 


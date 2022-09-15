

CREATE TABLE `gateway_org_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `short_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection_properties` mediumtext COLLATE utf8mb4_unicode_ci,
  `service_ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'if set, will be used for checking relay entry in postfix server header checks file',
  `service_url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'http call are done on this URL in case of http based gateway',
  `status_check_url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'url to push delivery status of message, in case of PUSH status_check_type',
  `message_class` enum('SMS','EMAIL','WECHAT','ANDROID','IOS','VOICECALL','LINE','VIBER', 'WHATSAPP', 'RCS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_priority` enum('HIGH','DEFAULT','BULK') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'HIGH',
  `channel_count` int(4) NOT NULL DEFAULT '1',
  `status` enum('ACTIVE','INACTIVE','DISABLED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `is_private` tinyint(1) DEFAULT '0',
  `status_check_type` enum('PULL','PUSH','NONE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PULL',
  `properties` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '2100-01-01 00:00:00',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `short_name` (`short_name`),
  KEY `status` (`status`),
  KEY `status_check_type` (`status_check_type`),
  KEY `auto_update_time` (`auto_update_time`)
) 


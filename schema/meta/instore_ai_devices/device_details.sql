

CREATE TABLE `device_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `device_id` bigint(20) NOT NULL,
  `lan_mac_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wifi_mac_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processor` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`device_id`),
  UNIQUE KEY `device_id` (`device_id`)
) 


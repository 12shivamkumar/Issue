

CREATE TABLE `accessories_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` bigint(20) NOT NULL,
  `with_rf_switch` tinyint(1) DEFAULT NULL,
  `device_id_desc` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hardware_extension` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `camera` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `case_color` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `case_size` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `microphone` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `device_id` (`device_id`)
) 


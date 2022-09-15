CREATE TABLE `store_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `notification_id` bigint(20) NOT NULL,
  `org_id` int(50) NOT NULL,
  `store_id` int(50) NOT NULL,
  `store_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `till_id` int(50) NOT NULL,
  `till_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` bigint(20) NOT NULL,
  `lasteEventTime` datetime NOT NULL,
  `autoUpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  COLLATE=utf8mb4_unicode_ci;

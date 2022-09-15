CREATE TABLE `entrance_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(11) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  `till_id` bigint(20) NOT NULL,
  `device_id` bigint(20) NOT NULL,
  `store_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `width_entrance` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height_entrance` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height_9ft_entrance` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_covered` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `router_entrance_distance` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `network_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `network_username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `network_password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entrance_image` longblob NOT NULL,
  PRIMARY KEY (`id`, `org_id`)
)

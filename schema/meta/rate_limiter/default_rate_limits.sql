CREATE TABLE `default_rate_limits` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `entity_id` int(11) NOT NULL,
  `entity_level` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit` int(11) NOT NULL,
  `limit_level` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `window` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `added_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_on` datetime NOT NULL,
   PRIMARY KEY (`id`)
)
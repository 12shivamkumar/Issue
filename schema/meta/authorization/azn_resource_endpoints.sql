CREATE TABLE `azn_resource_endpoints`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) NOT NULL,
  `pattern` varchar(250) COLLATE utf8mb4_unicode_ci,
  `action` enum('INCLUDE','EXCLUDE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INCLUDE',
  `priority` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY (`resource_id`)
);
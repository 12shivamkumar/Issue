

CREATE TABLE `custom_dimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) DEFAULT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_dimension` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_valid` tinyint(1) DEFAULT '1',
  `data` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) 


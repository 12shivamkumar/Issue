

CREATE TABLE `redirection_criteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `redirection_id` int(11) DEFAULT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) 


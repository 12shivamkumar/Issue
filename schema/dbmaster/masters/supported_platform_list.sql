

CREATE TABLE `supported_platform_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `platform_type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile_type` (`platform_type`)
) ;


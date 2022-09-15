

CREATE TABLE `supported_themes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `theme_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ;


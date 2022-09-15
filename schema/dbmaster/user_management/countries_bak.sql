

CREATE TABLE `countries_bak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'usually 4 alphabet representation',
  `mobile_country_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_regex` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_length_csv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ;


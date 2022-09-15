

CREATE TABLE `email_gateway_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) 


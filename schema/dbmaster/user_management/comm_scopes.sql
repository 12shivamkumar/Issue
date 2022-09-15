

CREATE TABLE `comm_scopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scope` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ;


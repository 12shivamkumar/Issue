

CREATE TABLE `cli_scripts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_id` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ran_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `unique_id` (`unique_id`),
  KEY `ran_on` (`ran_on`)
) ;


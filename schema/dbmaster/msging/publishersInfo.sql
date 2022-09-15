

CREATE TABLE `publishersInfo` (
  `publisherId` mediumint(9) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`publisherId`),
  UNIQUE KEY `code` (`code`)
) ;


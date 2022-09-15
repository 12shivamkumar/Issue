

CREATE TABLE `publishers` (
  `publisherId` int(11) NOT NULL,
  `categoryId` mediumint(9) NOT NULL AUTO_INCREMENT,
  `categoryCode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `categoryId` (`categoryId`),
  UNIQUE KEY `publisherId` (`publisherId`,`categoryCode`)
) ;


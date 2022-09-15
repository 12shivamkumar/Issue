

CREATE TABLE `region_holiday` (
  `date` date NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `date` (`date`,`region`)
) ;


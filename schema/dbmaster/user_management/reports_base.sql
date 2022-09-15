

CREATE TABLE `reports_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `report_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ;


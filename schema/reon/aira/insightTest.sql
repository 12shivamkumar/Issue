CREATE TABLE `insightTest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orgId` int(10) DEFAULT NULL,
  `level` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_name` enum('Org','Zone','Store') COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_value` text COLLATE utf8mb4_unicode_ci,
  `zone` text COLLATE utf8mb4_unicode_ci,
  `KPI` text COLLATE utf8mb4_unicode_ci,
  `storeId` int(10) DEFAULT NULL,
  `colourCode` enum('GREEN','RED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `insights` text COLLATE utf8mb4_unicode_ci,
  `expectedImpact` text COLLATE utf8mb4_unicode_ci,
  `impactValue` int(30) DEFAULT NULL,
  `based_on` text COLLATE utf8mb4_unicode_ci,
  `insights_period` date DEFAULT NULL,
  `last_updated_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB   COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;
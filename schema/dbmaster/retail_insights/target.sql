

CREATE TABLE `target` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `till_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_type` enum('DAY','MONTH','YEAR') COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_format` enum('PERC','ABS','CURRENCY') COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_period` datetime NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_id` (`org_id`)
) ;




CREATE TABLE `auditable_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation` enum('READ','WRITE') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `action` (`action`)
) ;


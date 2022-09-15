CREATE TABLE `config_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orgId` int(30) NOT NULL,
  `confId` int(20) NOT NULL,
  `confValue` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `key_confId_orgId` (`orgId`,`confId`)
) ENGINE=InnoDB AUTO_INCREMENT=123  COLLATE=utf8mb4_unicode_ci;

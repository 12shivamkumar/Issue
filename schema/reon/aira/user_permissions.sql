CREATE TABLE `user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(30) DEFAULT NULL,
  `userType` enum('ORG','ZONE','STORE') CHARACTER SET latin1 NOT NULL,
  `zoneRestrictions` text COLLATE utf8mb4_unicode_ci,
  `userRestrictions` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB   COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;
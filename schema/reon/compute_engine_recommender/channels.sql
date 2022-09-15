CREATE TABLE `channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('CAMPAIGN','ECOM','INSTORE','EMF') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
);
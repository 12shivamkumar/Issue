

CREATE TABLE `shard_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permission` enum('READ','WRITE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'WRITE',
  `database_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) 


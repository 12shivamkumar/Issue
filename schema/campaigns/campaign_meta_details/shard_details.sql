

CREATE TABLE `shard_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `database_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shard_discription` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_on` date NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) 


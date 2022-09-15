

CREATE TABLE `bucket_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bucket_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hit_rate` int(11) NOT NULL,
  `rows_count` int(11) DEFAULT NULL,
  `last_visited_on` date NOT NULL,
  PRIMARY KEY (`id`)
) 


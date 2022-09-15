

CREATE TABLE `bucket_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `shard_id` int(11) NOT NULL,
  `hit_rate` int(11) NOT NULL,
  `rows_count` int(11) DEFAULT NULL,
  `last_visited_on` date NOT NULL,
  PRIMARY KEY (`id`)
) 




CREATE TABLE `reachability_status_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `wl_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ss_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `label_id` (`label_id`)
) 


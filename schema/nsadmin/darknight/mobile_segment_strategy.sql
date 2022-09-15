

CREATE TABLE `mobile_segment_strategy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `strategy` varchar(500) NOT NULL,
  `expiry_days` int(11) NOT NULL,
  `is_reachable` tinyint(1) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) 


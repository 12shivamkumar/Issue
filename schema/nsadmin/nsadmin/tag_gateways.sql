

CREATE TABLE `tag_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(3) NOT NULL,
  `effective_start_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `effective_end_time` datetime NOT NULL DEFAULT '2100-01-01 00:00:00',
  `added_by` int(11) NOT NULL DEFAULT '0',
  `added_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) 


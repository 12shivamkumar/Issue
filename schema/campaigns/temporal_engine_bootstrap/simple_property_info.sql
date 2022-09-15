

CREATE TABLE `simple_property_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_info_id` int(11) DEFAULT NULL,
  `property_key` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `initialized` tinyint(1) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `property_id` (`action_info_id`),
  KEY `auto_update_time` (`auto_update_time`)
) 


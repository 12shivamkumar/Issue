

CREATE TABLE `simple_property_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_type` enum('STRING','BOOLEAN','INTEGER','DATE','REAL','ENUM') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_mandatory` tinyint(1) NOT NULL,
  `default_value` mediumtext COLLATE utf8mb4_unicode_ci,
  `allowed_values` mediumtext COLLATE utf8mb4_unicode_ci,
  `is_multi_select` tinyint(1) DEFAULT NULL,
  `action_meta_id` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `auto_update_time` (`auto_update_time`)
) 




CREATE TABLE `campaign_config_keys` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) 


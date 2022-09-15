

CREATE TABLE `config_values` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `value` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`)
) 


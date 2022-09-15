

CREATE TABLE `program_config_key_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` int(11) NOT NULL COMMENT 'user who updated the key',
  `updated_on` datetime NOT NULL COMMENT 'time when the key is updated',
  `is_valid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `keys_names` (`org_id`,`key_id`,`program_id`,`is_valid`),
  KEY `program_id` (`org_id`,`program_id`)
) ;


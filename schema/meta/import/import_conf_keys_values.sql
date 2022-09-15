

CREATE TABLE `import_conf_keys_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_id` int(11) NOT NULL COMMENT 'config key id',
  `template_id` int(11) NOT NULL COMMENT 'Template id ',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'config key values',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Key_template_index` (`key_id`,`template_id`)
) 


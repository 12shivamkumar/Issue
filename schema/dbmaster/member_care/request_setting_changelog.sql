

CREATE TABLE `request_setting_changelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_id` int(11) DEFAULT NULL,
  `org_id` int(11) NOT NULL DEFAULT '0',
  `old_value` mediumtext COLLATE utf8mb4_unicode_ci,
  `new_value` mediumtext COLLATE utf8mb4_unicode_ci,
  `updated_by` int(11) DEFAULT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`)
) ;


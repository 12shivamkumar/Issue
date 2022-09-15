CREATE TABLE `contact_info_ou_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_info_id` int(11) unsigned NOT NULL,
  `org_id` int(11) unsigned NOT NULL,
  `ou_id` int(11) NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`org_id`),
  KEY `sender_ou_mapping` (`org_id`, `ou_id`)
);

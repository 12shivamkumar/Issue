CREATE TABLE `expiry_extension_configuration` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `period_value` int(11),
  `period_type` enum('DAYS','MONTHS'),
  `enabled_events` mediumtext COLLATE utf8mb4_unicode_ci,
  `added_by` int(11) NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_org` (`id`,`org_id`,`is_valid`)
);
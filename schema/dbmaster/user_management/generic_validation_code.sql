

CREATE TABLE `generic_validation_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'registration or something else',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid_upto` datetime NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `entity_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_value` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` int(11) NOT NULL COMMENT 'till id',
  `added_on` datetime NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `validity_user_idx` (`org_id`,`entity_type`,`entity_value`,`is_valid`)
) ;


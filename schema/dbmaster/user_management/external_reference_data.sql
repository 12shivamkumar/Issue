

CREATE TABLE `external_reference_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` bigint(11) DEFAULT NULL,
  `external_reference_number` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `er_number_org_id` (`org_id`,`external_reference_number`),
  KEY `user_org_external` (`user_id`,`org_id`,`external_reference_number`)
) ;


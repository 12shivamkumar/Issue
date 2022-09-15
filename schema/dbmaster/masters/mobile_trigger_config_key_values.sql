

CREATE TABLE `mobile_trigger_config_key_values` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_id` bigint(20) NOT NULL,
  `trigger_id` bigint(20) NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_on` datetime NOT NULL,
  `added_by` bigint(20) NOT NULL,
  `org_id` bigint(20) NOT NULL,
  `is_valid` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_trigger_key_idx` (`org_id`,`trigger_id`,`key_id`)
) ;


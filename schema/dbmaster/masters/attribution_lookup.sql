

CREATE TABLE `attribution_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `org_id` int(11) NOT NULL,
  `org_entity_id` int(11) NOT NULL COMMENT 'Key (foreign) from `org_entities`',
  `lookup` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'This is the lookup value',
  `lookup_type` enum('WECHAT','MOBILE_TRIGGER') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Type of the lookup value',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL,
  `last_modified_on` datetime NOT NULL,
  `last_modified_by` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qrcode_url` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lookupcode` (`org_id`,`lookup`,`lookup_type`)
) ;


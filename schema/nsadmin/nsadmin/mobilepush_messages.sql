

CREATE TABLE `mobilepush_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL DEFAULT '0',
  `nsadmin_id` bigint(20) NOT NULL,
  `cuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `nsadmin_id` (`nsadmin_id`),
  KEY `license_cuid` (`org_id`,`license_code`,`cuid`)
) 


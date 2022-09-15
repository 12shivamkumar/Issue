

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `ou_id` bigint(20) NOT NULL DEFAULT '-1',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) NOT NULL,
  `added_by` bigint(20) NOT NULL,
  `added_on` timestamp NULL DEFAULT NULL,
  `is_valid` tinyint(1) DEFAULT '1',
  `auto_update_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_name` (`org_id`,`code`),
  UNIQUE KEY `org_ou_name` (`org_id`,`ou_id`,`code`),
  KEY `org_parent_id` (`org_id`,`parent_id`),
  KEY `org_time_idx` (`org_id`,`auto_update_timestamp`)
) 


CREATE TABLE `scopes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` bigint DEFAULT NULL,
  `is_active` boolean NOT NULL DEFAULT TRUE,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_id_orgid` (`id`,`org_id`),
  UNIQUE KEY `UK_org_scopename` (`org_id`,`name`),
  KEY `name_idx` (`org_id`,`name`),
  KEY `auto_update_time_idx` (`auto_update_time`)
);
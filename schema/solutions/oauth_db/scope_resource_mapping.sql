CREATE TABLE `scope_resource_mapping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint NOT NULL,
  `scope_id` bigint NOT NULL,
  `request_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` bigint DEFAULT NULL,
  `is_active` boolean NOT NULL DEFAULT TRUE,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `org_id_scope_id_idx` (`org_id`,`scope_id`),
  KEY `auto_update_time_idx` (`auto_update_time`)
);
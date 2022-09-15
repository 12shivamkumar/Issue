CREATE TABLE `audit_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint NOT NULL,
  `entity_id` bigint NOT NULL,
  `audit_log_type` enum('CLIENT', 'SCOPE', 'TEMPLATE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `org_id_type_entity_id_idx` (`org_id`,`audit_log_type`,`entity_id`),
  KEY `auto_update_time_idx` (`auto_update_time`)
);
CREATE TABLE `client_scope_mapping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint NOT NULL,
  `client_id` bigint NOT NULL,
  `scope_id` bigint DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `is_active` boolean NOT NULL DEFAULT TRUE,
  `created_on` datetime DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `org_id_scope_id_idx` (`org_id`,`scope_id`),
  KEY `org_id_client_id_idx` (`org_id`,`client_id`),
  KEY `auto_update_time_idx` (`auto_update_time`)
);
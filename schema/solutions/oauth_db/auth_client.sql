CREATE TABLE `auth_client` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint DEFAULT NULL,
  `client_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jwt_key` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` boolean NOT NULL DEFAULT TRUE,
  `created_on` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_client_key` (`client_key`),
  UNIQUE KEY `UK_name` (`org_id`, `client_name`),
  UNIQUE KEY `UK_client_key` (`org_id`,`client_key`),
  UNIQUE KEY `UK_id_orgid` (`id`,`org_id`),
  UNIQUE KEY `unique_client_name` (`org_id`,`client_name`),
  KEY `org_id_client_key_idx` (`org_id`,`client_key`),
  KEY `auto_update_time_idx` (`auto_update_time`)
);
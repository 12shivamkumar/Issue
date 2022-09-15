CREATE TABLE `template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint NOT NULL,
  `client_id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('MOBILE','EMAIL') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` boolean NOT NULL DEFAULT TRUE,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `org_id_client_id_idx` (`org_id`,`client_id`),
  KEY `auto_update_time_idx` (`auto_update_time`),
  KEY `org_id_key` (`org_id`,`id`)
);
CREATE TABLE `invalidated_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint NOT NULL,
  `client_id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `invalidated_token_type` enum('ACCESS','REFRESH') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACCESS',
  `token` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `org_id_client_id_idx` (`org_id`,`client_id`),
  KEY `org_id_client_id_token_idx` (`org_id`,`client_id`,`token`),
  KEY `org_id_user_id_idx` (`org_id`,`user_id`),
  KEY `auto_update_time_idx` (`auto_update_time`)
);
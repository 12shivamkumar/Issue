CREATE TABLE `authorization_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint NOT NULL,
  `session_id` bigint NOT NULL,
  `client_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('OPEN','CLOSED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expired_on` datetime DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id_code_idx` (`org_id`,`client_id`,`code`),
  KEY `org_id_session_id_idx` (`org_id`,`session_id`),
  KEY `user_id_idx` (`org_id`,`user_id`),
  KEY `auto_update_time_idx` (`auto_update_time`)
);
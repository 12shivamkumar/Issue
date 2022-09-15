CREATE TABLE `client_otp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint NOT NULL,
  `session_id` bigint NOT NULL,
  `otp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp_status` enum('VALIDATED', 'NOT_VALIDATED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `identifier_type` enum('MOBILE', 'EMAIL') COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp_expiration_date` datetime NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `identifier_value` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id_date_idx` (`session_id`),
  KEY `org_id_user_id_idx` (`org_id`,`user_id`),
  KEY `auto_update_time_idx` (`auto_update_time`)
);
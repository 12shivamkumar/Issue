CREATE TABLE `template_language` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint NOT NULL,
  `client_id` bigint NOT NULL,
  `template_id` bigint NOT NULL,
  `language` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `is_active` boolean NOT NULL DEFAULT TRUE,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `org_id_template_id_idx` (`org_id`,`template_id`),
  KEY `auto_update_time_idx` (`auto_update_time`)
);
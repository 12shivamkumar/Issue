

CREATE TABLE `email_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci,
  `email_step_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_unsub_type` enum('SIMPLE','PREFERENTIAL') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_service_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) 


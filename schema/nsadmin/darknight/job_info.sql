

CREATE TABLE `job_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` enum('NEW','SUBMITTED','PROCESSING','COMPLETED','FAILED','INQUEUE') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_count` bigint(10) DEFAULT NULL,
  `processed_count` bigint(10) DEFAULT NULL,
  `queued_time` timestamp NOT NULL DEFAULT '1971-01-01 00:00:00',
  `created_time` timestamp NOT NULL DEFAULT '1971-01-01 00:00:00',
  `channel` enum('EMAIL') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` enum('BULK','TRANS','CAMPAIGN') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `routing_key` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_detail` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_code` int(10) DEFAULT NULL,
  `client_context_id` bigint(20) DEFAULT NULL,
  `client_type_id` tinyint(5) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `client_context` (`client_context_id`,`client_type_id`)
) 


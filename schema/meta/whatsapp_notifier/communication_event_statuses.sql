CREATE TABLE `communication_event_statuses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `api_payload` json DEFAULT NULL,
  `api_response` json DEFAULT NULL,
  `event_id` bigint(20) DEFAULT NULL,
  `api_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_id` bigint(20) DEFAULT NULL,
  `request_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webhook_req_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_event_id` (`event_id`),
  KEY `fk_org_id` (`org_id`)
);
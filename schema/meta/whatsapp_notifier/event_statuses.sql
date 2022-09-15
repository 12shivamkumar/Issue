CREATE TABLE `event_statuses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fetch_customer_req_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_subscription_req_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_event_map_id` bigint(20) DEFAULT NULL,
  `message_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_id` bigint(20) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webhook_req_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `event_status_index` (`mobile`,`org_id`),
  KEY `fk_org_id` (`org_id`),
  KEY `fk_template_event_map_id` (`template_event_map_id`)
);


CREATE TABLE `veneno_service_monitor_status` (
  `message_id` int(11) NOT NULL,
  `message_version` int(11) NOT NULL DEFAULT '0',
  `status` enum('STUCK_AT_VENENO','STUCK_AT_NSADMIN','SKIPPED_AT_VENENO','FAILED_AT_NSADMIN','FAILED_AT_SOCIAL_GATEWAY') COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_id` int(11) NOT NULL,
  `auto_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `message_id_version_status` (`message_id`,`message_version`,`status`)
) 


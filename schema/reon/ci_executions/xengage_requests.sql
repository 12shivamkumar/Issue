CREATE TABLE `xengage_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `req_type` enum('XENGAGESUCCESS','XENGAGERESPONSE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `param_json` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_api_status` enum('EXECUTING','FAILED','SUCCEEDED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'EXECUTING',
  `result_json` mediumtext COLLATE utf8mb4_unicode_ci,
  `submission_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `failure_cause` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message_start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message_end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `campaign_id` int(20) NOT NULL,
  `message_id` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response_api_status` enum('EXECUTING','FAILED','SUCCEEDED') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extIdentifier` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response_api_start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `response_api_end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
);



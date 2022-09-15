

CREATE TABLE `scoring_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `req_type` enum('PERSONALIZE VARIANTS','PERSONALIZE TIME','ROI GENERATION','LIST GENERATION','PROPENSITY SCORING','CATEGORY_TIME','TOP_CATEGORY_INFERENCE','STORE_PERSONALIZE','CATEGORY_STORE','STORE_CATEGORY_TIME','STORE_TIME') CHARACTER SET latin1 NOT NULL,
  `param_json` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('QUEUED','SUBMITTED','EXECUTING','POST_PROCESSING','FAILED','SUCCEEDED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'QUEUED',
  `result_json` mediumtext COLLATE utf8mb4_unicode_ci,
  `submission_time` datetime NOT NULL,
  `submitted_by` int(11) NOT NULL,
  `execution_log_location` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failure_cause` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `request_tag` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `message_id` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extIdentifier` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3559  COLLATE=utf8mb4_unicode_ci;


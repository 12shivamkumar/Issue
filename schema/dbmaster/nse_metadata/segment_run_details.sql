

CREATE TABLE `segment_run_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL DEFAULT '0',
  `segment_id` bigint(20) NOT NULL,
  `metadata_id` bigint(20) NOT NULL,
  `status` enum('VALIDATING','AWAITING_ACTION','VALIDATION_FAILED','DISCARDED','SYNC_INPROGRESS','SYNC_DONE','SYNC_FAILED','SKIPPED') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `success_source` text COLLATE utf8mb4_unicode_ci,
  `error_source` text COLLATE utf8mb4_unicode_ci,
  `stats_params` text COLLATE utf8mb4_unicode_ci,
  `last_updated_by` bigint(20) DEFAULT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `segment_index` (`id`,`segment_id`) ,
  KEY `org_segment_index` (`org_id`,`segment_id`)
) ;


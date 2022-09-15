

CREATE TABLE `event_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'event log id',
  `org_id` int(11) NOT NULL DEFAULT '0',
  `customer_id` bigint(20) NOT NULL,
  `event_type_id` smallint(6) NOT NULL DEFAULT '0',
  `event_sub_type_id` int(11) NOT NULL DEFAULT '0',
  `event_subject_id` bigint(20) NOT NULL,
  `unique_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `event_generated_at` enum('EMF','PEB','IMPORT') NOT NULL DEFAULT 'EMF',
  `status` enum('IN_PROGRESS','SUCCESS','PARTIAL_SUCCESS','FAIL') NOT NULL DEFAULT 'SUCCESS',
  `till_id` int(11) NOT NULL DEFAULT '-1',
  `property_values` varchar(100),
  `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `processing_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `event` (`org_id`,`customer_id`,`unique_id`),
  KEY `event_type` (`org_id`,`customer_id`,`event_type_id`,`event_sub_type_id`),
  KEY `processing_time_with_cust_id` (`org_id`,`customer_id`,`processing_time`),
  KEY `processing_time` (`org_id`,`processing_time`),
  KEY `event_time` (`event_time`)
) ;


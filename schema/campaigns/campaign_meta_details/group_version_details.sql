

CREATE TABLE `group_version_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `bucket_id` int(11) DEFAULT NULL,
  `params` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_type` enum('ALL','TEST','CONTROL','EXPERIMENT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'TEST',
  `customer_count` int(11) NOT NULL,
  `version_number` int(11) NOT NULL,
  `status` enum('PREPARE','PROCESSING','ACTIVE','ERROR') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `error_description` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `test_control` enum('ORG','CUSTOM','SKIP') COLLATE utf8mb4_unicode_ci DEFAULT 'ORG',
  `test_percentage` int(11) DEFAULT NULL,
  `is_migrated` tinyint(1) NOT NULL DEFAULT '0',
  `data_schema` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `group_users_s3_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_campaign` (`org_id`,`campaign_id`,`group_id`,`is_active`),
  KEY `auto_update_idx` (`auto_update_time`),
  KEY `k_org_test_type_percentage` (`org_id`,`test_control`,`test_percentage`),
  KEY `k_org_group_id` (`org_id`,`group_id`)
) 


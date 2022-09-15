

CREATE TABLE `create_audience_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `group_version_id` int(11) NOT NULL,
  `uploaded_file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('OPEN','VALIDATING','PROCESSING','ERROR','CLOSED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'OPEN',
  `total_upload_count` int(11) DEFAULT '0',
  `error_count` int(11) DEFAULT '0',
  `error_file_url` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `params` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `k_org_id_group_id` (`org_id`,`group_version_id`)
) 




CREATE TABLE `import_additional_details` (
  `file_id` int(11) NOT NULL DEFAULT '0',
  `org_id` int(11) NOT NULL,
  `configs` mediumtext COLLATE utf8mb4_unicode_ci,
  `field_info` mediumtext COLLATE utf8mb4_unicode_ci,
  `fs_file_handle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_info` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`file_id`),
  KEY `idx_org_id` (`org_id`,`file_id`)
) 


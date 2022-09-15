

CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) DEFAULT NULL,
  `version_number` int(11) DEFAULT NULL,
  `s3_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` bigint(20) NOT NULL DEFAULT '0' COMMENT 'size of the file',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `added_by_ip` int(11) NOT NULL,
  `added_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `additional_info` mediumtext COLLATE utf8mb4_unicode_ci COMMENT 'Any additional info can be saved here as json',
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`s3_token`),
  UNIQUE KEY `file_version` (`file_id`,`version_number`)
) 




CREATE TABLE `segment_ftp_metadata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `segment_id` bigint(20) NOT NULL,
  `ftp_tag` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftp_folder` text COLLATE utf8mb4_unicode_ci,
  `last_updated_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `segment_id` (`org_id`,`segment_id`),
  KEY `org_id` (`org_id`)
) ;


CREATE TABLE `files_delete_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(10) unsigned NOT NULL,
  `version_id` int(10) unsigned NOT NULL,
  `performed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `performed_ip` varchar(46) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_s3_token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_s3_token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) 


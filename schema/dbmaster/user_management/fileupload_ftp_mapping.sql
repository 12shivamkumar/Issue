

CREATE TABLE `fileupload_ftp_mapping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `remote_folder_absolute_path` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remote_folder_path` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `uploaded_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_id` (`org_id`),
  KEY `file_id` (`file_id`)
) ;


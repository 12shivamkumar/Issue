CREATE TABLE `precheck_errors_types`(
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `error_code` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_type` enum('PERMANENT_FAILURE', 'TEMPORARY_FAILURE') COLLATE utf8mb4_unicode_ci NOT NULL ,
  `error_message` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_message` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
);
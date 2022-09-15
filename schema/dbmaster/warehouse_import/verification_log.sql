

CREATE TABLE `verification_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL DEFAULT '0',
  `last_verified_loyalty_log_id` int(11) DEFAULT NULL,
  `pa_time` datetime DEFAULT NULL,
  `points_mismatch_summary` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points_mismatch_details` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_type` enum('SUMMARY_ONLY','ALL') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_status` enum('IN_PROGRESS','SUCCESS','FAIL') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`org_id`)
) ;


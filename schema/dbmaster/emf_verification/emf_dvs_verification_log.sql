

CREATE TABLE `emf_dvs_verification_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL DEFAULT '0',
  `last_verified_id` int(11) DEFAULT NULL,
  `verification_status` enum('IN_PROGRESS','SUCCESS','FAIL') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exception` mediumtext COLLATE utf8mb4_unicode_ci,
  `verified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`org_id`)
) ;




CREATE TABLE `instructions_verification_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `last_verified_dump_id` int(11) NOT NULL,
  `last_verified_ep_dump_id` int(11) NOT NULL,
  `instructions_mismatch_summamry` mediumtext COLLATE utf8mb4_unicode_ci,
  `verification_status` enum('IN_PROGRESS','SUCCESS','FAIL') COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified_on` datetime NOT NULL,
  PRIMARY KEY (`id`,`org_id`)
) ;


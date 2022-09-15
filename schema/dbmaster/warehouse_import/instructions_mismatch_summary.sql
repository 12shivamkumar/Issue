

CREATE TABLE `instructions_mismatch_summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instructions_verification_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `unique_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instruction_type` enum('AWARD','SLAB_UPGRADE','MESSAGE','ISSUE_VOUCHER','REDEEM') COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`,`org_id`)
) ;


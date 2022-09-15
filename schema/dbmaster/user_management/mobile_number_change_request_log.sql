

CREATE TABLE `mobile_number_change_request_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `old_mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_by` bigint(20) NOT NULL,
  `request_time` datetime NOT NULL,
  `changed` int(11) NOT NULL DEFAULT '0',
  `type` enum('MOBILE','EXTERNAL_ID','EMAIL') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MOBILE',
  `last_changed_on` datetime DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_id` (`org_id`,`user_id`,`old_mobile`)
) ;


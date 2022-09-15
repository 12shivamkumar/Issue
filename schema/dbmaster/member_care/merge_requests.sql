

CREATE TABLE `merge_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) NOT NULL,
  `session_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_id` int(11) NOT NULL,
  `victim_user_id` int(11) NOT NULL,
  `survivor_user_id` int(11) NOT NULL,
  `requested_on` timestamp NULL DEFAULT NULL,
  `status` enum('PROCESSING','PARTIAL_SUCCESS','SUCCESS','FAILED','TIMED_OUT','DUPLICATE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_user_idx` (`org_id`,`victim_user_id`,`survivor_user_id`)
) ;


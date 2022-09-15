

CREATE TABLE `goodwill_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) DEFAULT NULL,
  `org_id` int(11) NOT NULL DEFAULT '0',
  `type` enum('COUPON','POINTS','TIER') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assoc_id` int(11) DEFAULT NULL,
  `approved_value` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_comments` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `program_id` int(11) NOT NULL DEFAULT '-1',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_type_idx` (`org_id`,`type`),
  KEY `org_assoc_idx` (`org_id`,`assoc_id`),
  UNIQUE KEY `org_request_idx` (`org_id`,`request_id`),
  KEY `auto_time_idx` (`auto_update_time`)
) ;


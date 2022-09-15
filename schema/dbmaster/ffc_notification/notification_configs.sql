

CREATE TABLE `notification_configs` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orgId` int(50) NOT NULL,
  `type` enum('DATA-SANITY','UNDER-PERFORMANCE','MILESTONE-ACHIEVED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kpi` enum('VISITOR','BILLS','CONVERSION','SALES') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority_type` enum('INFO','ERROR') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INFO',
  `target` int(30) DEFAULT NULL,
  `selfRoles` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentRoles` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` enum('USER', 'ADMIN_USER','BOTH') DEFAULT 'ADMIN_USER',
  `scheduledInterval` int(50) DEFAULT NULL,
  `scheduledTime` time DEFAULT NULL,
  `scheduler_id` int(200) DEFAULT NULL,
  `is_email_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `is_push_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `time_zone` varchar(10) NOT NULL DEFAULT '+5:30',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `email_list` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ;

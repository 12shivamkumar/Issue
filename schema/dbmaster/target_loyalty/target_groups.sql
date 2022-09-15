

CREATE TABLE `target_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `last_updated_on` timestamp NULL DEFAULT NULL,
  `last_updated_by` bigint(20) NOT NULL,
  `preferred_till_id` bigint(20) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_evaluation_type` enum('FIXED_CALENDAR_WINDOW', 'CYCLIC_WINDOW') NOT NULL DEFAULT 'FIXED_CALENDAR_WINDOW',
  `recurring_cycles` int(11) NOT NULL DEFAULT -1,
  `frequency`  int(11) NOT NULL DEFAULT 0,
  `target_cycle_start_date` datetime DEFAULT NULL,
  `frequency_type` enum('MONTHLY','QUARTERLY','HALF_YEARLY','YEARLY','CUSTOM') NOT NULL DEFAULT 'CUSTOM',
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `unique_name` (`org_id`,`name`),
  KEY `auto_time_idx` (`auto_update_time`)
) ;


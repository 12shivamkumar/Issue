CREATE TABLE `org_sync_check_log` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
  	`org_id` int(11) NOT NULL,
  	`status` enum('OPEN','IN_PROGRESS','SUCCESS','FAILED') NOT NULL,
  	`added_on` datetime NOT NULL,
  	`started_at` datetime DEFAULT NULL COMMENT 'when status changed from OPEN to IN_PROGRESS',
  	`last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  	`caller_unique_id` varchar(50) NOT NULL,
  	`retry_count` int NOT NULL,
  	`last_sync_time` datetime NULL COMMENT 'last sync time from qserver snapshot notify',
  	`reload_time` datetime NULL COMMENT 'reload time from qserver snapshot notify',
  	PRIMARY KEY (`id`),
  	UNIQUE KEY `caller_unique_idx` (`org_id`,`caller_unique_id`)
) COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `cron_run_log` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `cron_type` enum('CREDIT_UTILIZATION', 'CREDIT_DB_EXPIRATION', 'CREDIT_RECONCILIATION','CREDIT_CACHE_EXPIRATION') COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_date` date NOT NULL,
  `cron_start_time` datetime DEFAULT NULL,
  `cron_end_time` datetime DEFAULT NULL,
  `status` enum('OPEN', 'CLOSED', 'ERROR') COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `cron_type_status_index` (`cron_type`, `status`)
)
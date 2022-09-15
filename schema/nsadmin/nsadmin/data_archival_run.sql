

CREATE TABLE `data_archival_run` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nsadmin_start_id` bigint(20) NOT NULL,
  `nsadmin_end_id` bigint(20) NOT NULL,
  `run_date` date NOT NULL,
  `execution_start` datetime DEFAULT NULL,
  `execution_end` datetime DEFAULT NULL,
  `status` enum('OPEN','PROCESSING','PREV_TABLE_PROCESSING','CLOSED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'OPEN',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) 



-- start  schema : dbs_sr_requests

CREATE TABLE `dbs_sr_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `status` enum('QUEUED','CLUSTER_DONE','SUCCESS','RUNNING','FAILED','KILLED','NONE','OPEN') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `master_sync_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_idx` (`status`,`org_id`)
);

-- end  Schema :  dbs_sr_requests

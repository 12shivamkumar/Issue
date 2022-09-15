-- start  Schema : query_stats

CREATE TABLE `query_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `req_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facts` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_by_dims` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `status` enum('SUCCESS','RUNNING','FAILED','KILLED','NONE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NONE',
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

-- end  Schema :  query_stats

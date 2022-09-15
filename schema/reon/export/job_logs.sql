

CREATE TABLE `job_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_id` bigint(20) NOT NULL,
  `context` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `context_begin_id` bigint(20) DEFAULT NULL,
  `context_end_id` bigint(20) DEFAULT NULL,
  `row_count` int(11) DEFAULT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) 


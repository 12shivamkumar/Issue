CREATE TABLE `airflow_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `onboard_execution` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `global_dag_execution` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_dag_execution` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
);
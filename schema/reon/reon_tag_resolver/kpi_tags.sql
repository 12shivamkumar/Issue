CREATE TABLE `kpi_tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `job_id` bigint(20) NOT NULL,
  `kpi_id` varchar(100) NOT NULL,
  `alias_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`org_id`)
);
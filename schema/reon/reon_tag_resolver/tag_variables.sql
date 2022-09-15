CREATE TABLE `tag_variables` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `tag_type` enum('KPI','QUERY') NOT NULL,
  `variable_key` varchar(100) NOT NULL,
  `variable_value` varchar(100) NOT NULL,
   PRIMARY KEY (`id`,`org_id`)
);
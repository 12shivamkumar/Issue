

CREATE TABLE `data_providers_file_mapping` (
  `org_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`org_id`,`user_id`)
) ;




CREATE TABLE `microsite_mapping` (
  `org_id` bigint(20) NOT NULL,
  `microsite_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`org_id`),
  UNIQUE KEY `microsite_id` (`microsite_id`)
) ;


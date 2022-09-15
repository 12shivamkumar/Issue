

CREATE TABLE `spark_org_status_mapping` (
  `org_id` int(11) NOT NULL,
  `is_spark_enabled` tinyint(4) DEFAULT '0',
  `is_old_filter_enabled` tinyint(1) DEFAULT '1'
) 



-- start  Schema : enabled_orgs

CREATE TABLE `enabled_orgs` (
  `org_id` int(11) NOT NULL,
  `is_enabled` tinyint(3) NOT NULL DEFAULT '1',
  `auto_update_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `size` int(11) NOT NULL DEFAULT '5',
  `priority` tinyint(3) NOT NULL DEFAULT '3',
  `batch_no` int(10) NOT NULL DEFAULT '0',
  `incremental_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dimension_incremental_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `solr_job_incremental_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `last_sync_time` datetime DEFAULT NULL,
  `morning_file_sync_required` tinyint(1) NOT NULL DEFAULT '1',
  `alap_time` varchar(50) DEFAULT NULL, 
  PRIMARY KEY (`org_id`)
);

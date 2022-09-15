-- start  Schema : `sqoop_run_details`
CREATE TABLE `sqoop_run_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `run_type` enum('FULL','INCREMENTAL') NOT NULL,
  `master_time` datetime NOT NULL,
  `execution_id` int(10) DEFAULT '0',
  `status` enum('COMPLETED','INPROGRESS','FAILED','SQOOP_COMPLETED') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);



CREATE TABLE `run_time_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(10) NOT NULL,
  `req_id` int(11) NOT NULL,
  `line_items_count` bigint(11) unsigned DEFAULT NULL,
  `user_count` bigint(11) unsigned DEFAULT NULL,
  `items_count` bigint(11) unsigned DEFAULT NULL,
  `train_start_date` varchar(15) NOT NULL,
  `num_executors` smallint(6) NOT NULL,
  `executor_memory` varchar(5) NOT NULL,
  `rank` smallint(6) NOT NULL,
  `max_iterations` smallint(6) NOT NULL,
  `hit_rate` mediumtext NOT NULL,
  `als_run_time` double(10,3) NOT NULL,
  `total_run_time` double(10,3) NOT NULL,
  `process_type` varchar(50) NOT NULL,
  `row_created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=292 ;


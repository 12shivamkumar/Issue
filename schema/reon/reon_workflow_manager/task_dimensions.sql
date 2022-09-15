-- start  Schema : `task_dimensions`
CREATE TABLE `task_dimensions` (
  `task_id` int(11) NOT NULL,
  `org_id` int(11) DEFAULT NULL,
  `primary_fact` varchar(300) DEFAULT NULL,
  `secondary_fact` varchar(300) DEFAULT NULL,
  `kpi_type` varchar(32) NOT NULL,
  `fact_type` varchar(32) DEFAULT NULL,
  `table_type` varchar(32) DEFAULT NULL,
  `dimensions` varchar(32) DEFAULT NULL,
  `primary_history_fact` varchar(32) DEFAULT NULL,
  `secondary_history_fact` varchar(32) DEFAULT NULL,
  `function_type` varchar(32) DEFAULT NULL,
  `end_point` varchar(32) DEFAULT NULL,
  `info` text,
  PRIMARY KEY (`task_id`)
);

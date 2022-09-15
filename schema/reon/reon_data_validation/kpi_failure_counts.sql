
-- start  Schema : kpi_failure_counts

CREATE TABLE `kpi_failure_counts` (
  `org_id` int(11) DEFAULT NULL,
  `test_case_name` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `exec_id` int(11) DEFAULT NULL
) ;


-- end  Schema : kpi_failure_counts
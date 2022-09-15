

CREATE TABLE `client_log_file_mapping` (
  `org_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`org_id`,`store_id`,`file_id`),
  UNIQUE KEY `file_id` (`file_id`),
  KEY `org_id` (`org_id`,`store_id`,`created_time`)
) ;


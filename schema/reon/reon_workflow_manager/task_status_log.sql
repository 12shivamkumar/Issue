-- start  Schema : `task_status_log`
CREATE TABLE `task_status_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `execution_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `added_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `execution_id` (`execution_id`,`task_id`),
  KEY `added_time` (`added_time`)
);

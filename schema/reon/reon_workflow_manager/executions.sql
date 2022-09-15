-- start  Schema : `executions`
CREATE TABLE `executions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `client_uuid` varchar(64) DEFAULT NULL,
  `workflow` varchar(64) DEFAULT 'ETL',
  `template_id` int(11) DEFAULT NULL,
  `status` enum('READY','STARTING','RUNNING','SUCCESS','FAILED','PAUSED','STOPPED') DEFAULT 'READY',
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `properties` longtext,
  PRIMARY KEY (`id`)
);

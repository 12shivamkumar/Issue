

CREATE TABLE `email_status_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `verifier` varchar(100) DEFAULT NULL,
  `reason` text,
  `status` enum('VALID','INVALID','UNKNOWN') NOT NULL,
  `previous_status` enum('VALID','INVALID','UNKNOWN') DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `verifier` (`verifier`),
  KEY `status` (`status`,`previous_status`),
  KEY `auto_update_time` (`auto_update_time`)
) 


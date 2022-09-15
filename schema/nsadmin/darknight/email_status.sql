

CREATE TABLE `email_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` enum('VALID','INVALID','UNKNOWN') NOT NULL,
  `verifier` enum('ROBIN','BRITE','GATEWAY') NOT NULL,
  `hard_bounce_count` tinyint(8) NOT NULL DEFAULT '0',
  `soft_bounce_count` tinyint(8) NOT NULL DEFAULT '0',
  `success_count` int(10) NOT NULL DEFAULT '0',
  `failed_count` tinyint(9) NOT NULL DEFAULT '0',
  `last_success_on` timestamp NOT NULL DEFAULT '1971-01-01 00:00:00',
  `last_failed_on` timestamp NOT NULL DEFAULT '1971-01-01 00:00:00',
  `last_status_changed` timestamp NOT NULL DEFAULT '1971-01-01 00:00:00',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `status` (`status`),
  KEY `auto_update_time` (`auto_update_time`)
) 


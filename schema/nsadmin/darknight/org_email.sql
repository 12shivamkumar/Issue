

CREATE TABLE `org_email` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL DEFAULT '0',
  `whitelisted_on` timestamp NOT NULL DEFAULT '1971-01-01 00:00:00',
  `verifier` enum('ROBIN','BRITE','GATEWAY','NONE') DEFAULT NULL,
  `email_id` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `job_id` bigint(20) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_email_index` (`org_id`,`user_id`,`email_id`),
  KEY `auto_update_time` (`auto_update_time`),
  KEY `org_email_id` (`org_id`,`email_id`),
  KEY `org_auto_update_time` (`org_id`,`auto_update_time`)
) 


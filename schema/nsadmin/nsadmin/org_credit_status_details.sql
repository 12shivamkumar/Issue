

CREATE TABLE `org_credit_status_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `credit_balance` double NOT NULL,
  `threshold_credits` double NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `credit_management_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `last_utilized_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_id` (`org_id`),
  KEY `last_utilized_date_index` (`last_utilized_date`)
) 


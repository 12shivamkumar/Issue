

CREATE TABLE `merge_status_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `user_subscription_status_id` int(11) NOT NULL,
  `merge_customer_summary_id` int(11) NOT NULL,
  `changed` enum('USERID','EXTERNALREFID') COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `request_id` (`org_id`,`merge_customer_summary_id`)
) 


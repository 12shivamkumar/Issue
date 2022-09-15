

CREATE TABLE `variant_execution_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `message_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_variant_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_queue_id` int(11) NOT NULL,
  `status` enum('OPEN','PROCESSING','SUBMITTED','TEMPORARY_FAILURE','SUCCESS','PERMANENT_FAILURE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `org_campaign_message_variant_idx` (`org_id`,`campaign_id`,`message_variant_id`)
) 


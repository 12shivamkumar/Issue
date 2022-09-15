

CREATE TABLE `notification_context` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `message_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_variant_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `communication_details_id` int(11) DEFAULT NULL,
  `notification_type` enum('PRECHECK','POSTPONE','FAILURE','SUCCESS','MESSAGE_APPROVAL','MESSAGE_PROCESSING_ERROR','MESSAGE_APPROVED','MESSAGE_DELIVERY') COLLATE utf8mb4_unicode_ci NOT NULL,
  `execution_stage` enum('REMIND','EXECUTE','POST_EXECUTE','PRE_REMIND') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('OPEN','PROCESSING','CLOSED','ERROR') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_campaign_message_idx` (`org_id`,`campaign_id`,`message_id`)
) 


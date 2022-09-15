

CREATE TABLE `user_campaign_subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('OPTIN','OPTOUT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'OPTOUT',
  `campaign_id` int(11) DEFAULT '-1',
  `communication_id` int(11) DEFAULT '-1',
  `last_updated_on` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_user_idx` (`org_id`,`user_id`,`campaign_id`,`communication_id`),
  KEY `user_campaign_outbox_idx` (`org_id`,`campaign_id`,`communication_id`),
  KEY `communication_time_idx` (`communication_id`,`auto_update_time`),
  KEY `org_communication_time_idx` (`org_id`,`communication_id`,`auto_update_time`)
) 


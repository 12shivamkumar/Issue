

CREATE TABLE `campaign_message_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `parent_message_id` int(11) NOT NULL,
  `child_message_id` int(11) NOT NULL,
  `relation_type` enum('CAMPAIGN_REMINDER') COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_campaign_message` (`org_id`,`campaign_id`,`child_message_id`)
) ;


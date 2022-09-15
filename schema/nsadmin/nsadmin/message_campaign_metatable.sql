

CREATE TABLE `message_campaign_metatable` (
  `id` int(11) NOT NULL,
  `table_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `min_inbox_id` int(11) NOT NULL,
  `max_inbox_id` int(11) NOT NULL,
  `last_message_date` datetime NOT NULL,
  UNIQUE KEY `campaign_id` (`table_name`,`org_id`,`campaign_id`)
) 


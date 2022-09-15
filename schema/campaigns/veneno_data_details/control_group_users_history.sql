

CREATE TABLE `control_group_users_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `last_updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_message_user_id_idx` (`org_id`,`message_id`,`user_id`),
  KEY `campaign_id` (`org_id`,`campaign_id`,`message_id`),
  KEY `last_updated_time` (`last_updated_time`,`org_id`)
) 


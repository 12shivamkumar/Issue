

CREATE TABLE `reloadable_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,

  `message_id` int(11) NOT NULL,
  `is_campaign_active` tinyint(1) NOT NULL,
  `is_message_active` tinyint(1) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`,`org_id`),
  UNIQUE KEY `u_org_message_idx` (`org_id`,`message_id`)
) 


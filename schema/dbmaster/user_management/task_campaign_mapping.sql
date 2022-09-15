

CREATE TABLE `task_campaign_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `msg_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `org_id` (`org_id`,`task_id`,`msg_id`),
  KEY `auto_update_idx` (`auto_update_time`)
) ;


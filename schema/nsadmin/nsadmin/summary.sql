

CREATE TABLE `summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sending_org_id` int(11) NOT NULL,
  `message_priority` enum('HIGH','DEFAULT','BULK') COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `message_class` enum('SMS','EMAIL','WECHAT','ANDROID','IOS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `message_status` smallint(6) NOT NULL,
  `message_count` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk` (`sending_org_id`,`message_priority`,`gateway`,`date`,`message_class`,`message_status`,`campaign_id`,`client_id`),
  KEY `message_priority` (`message_priority`),
  KEY `gateway` (`gateway`),
  KEY `date` (`date`),
  KEY `message_class` (`message_class`),
  KEY `message_status` (`message_status`),
  KEY `sending_org_id` (`sending_org_id`)
) 


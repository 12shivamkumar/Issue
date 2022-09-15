

CREATE TABLE `message_failure_summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sending_org_id` int(11) NOT NULL,
  `message_class` enum('SMS','EMAIL') COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_priority` enum('HIGH','DEFAULT','BULK') COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `failure_reason` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk` (`sending_org_id`,`gateway`,`message_class`,`message_priority`,`campaign_id`,`client_id`,`date`,`failure_reason`)
) 


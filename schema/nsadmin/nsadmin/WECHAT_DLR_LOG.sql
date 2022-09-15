

CREATE TABLE `WECHAT_DLR_LOG` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `campaign_id` bigint(20) NOT NULL,
  `org_id` int(11) NOT NULL,
  `msg_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalCount` int(7) DEFAULT NULL,
  `filterCount` int(7) DEFAULT NULL,
  `sentCount` int(7) DEFAULT NULL,
  `errorCount` int(7) DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `msg_id` (`msg_id`),
  KEY `campaign_org` (`campaign_id`,`org_id`),
  KEY `auto_update_time` (`auto_update_time`)
) 


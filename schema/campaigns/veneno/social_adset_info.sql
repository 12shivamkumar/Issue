

CREATE TABLE `social_adset_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` int(11) unsigned NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_id` int(11) unsigned NOT NULL,
  `message_version` int(11) NOT NULL DEFAULT '0',
  `remote_adset_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remote_campaign_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remote_offer_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_audience_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remote_ad_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_message_version` (`org_id`,`message_id`,`message_version`),
  KEY `auto_update_time` (`auto_update_time`)
) 


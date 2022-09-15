

CREATE TABLE `social_message_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` int(11) unsigned NOT NULL,
  `campaign_id` int(11) unsigned NOT NULL,
  `message_id` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('FACEBOOK','GOOGLE','TWITTER') COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient_list_id` int(11) NOT NULL,
  `account_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remote_list_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remote_adset_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remote_ad_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_id` (`org_id`,`type`,`account_id`,`remote_list_id`) ,
  KEY `auto_update_time` (`auto_update_time`)
) 


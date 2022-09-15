

CREATE TABLE `social_audience_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` int(11) unsigned NOT NULL,
  `message_id` int(11) NOT NULL DEFAULT '-1',
  `type` enum('FACEBOOK','GOOGLE','TWITTER') COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient_list_id` int(11) NOT NULL,
  `account_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remote_list_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `approximate_count` int(64) unsigned NOT NULL DEFAULT '0',
  `created_on` timestamp NULL DEFAULT NULL,
  `remote_updated_on` timestamp NULL DEFAULT NULL,
  `cached_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `auto_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_id` (`org_id`,`type`,`account_id`,`remote_list_id`) ,
  KEY `auto_update_time` (`auto_update_time`),
  KEY `org_message_idx` (`org_id`,`message_id`,`type`)
) 


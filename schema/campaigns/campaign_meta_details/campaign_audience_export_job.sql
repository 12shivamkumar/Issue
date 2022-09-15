CREATE TABLE `campaign_audience_export_job` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `org_id` int(11) NOT NULL,
 `group_id` int(11) NOT NULL,
 `group_version_id` int(11) NOT NULL,
 `channel` enum('MOBILE','EMAIL','WECHAT','ANDROID','IOS','LINE','FACEBOOK','GOOGLE','VIBER','NONE') COLLATE utf8mb4_unicode_ci NOT NULL,
 `account_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
 `status` enum('OPEN','VALIDATING','PROCESSING','ERROR','CLOSED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'OPEN',
 `file_url` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
 `params` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
 `created_on` datetime NOT NULL,
 `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`,`org_id`),
 UNIQUE KEY `group_version_channel_account` (`group_version_id`,`channel`,`account_id`)
) ENGINE=InnoDB  COLLATE=utf8mb4_unicode_ci 


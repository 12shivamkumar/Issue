

CREATE TABLE `credits_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL DEFAULT '0',
  `message_class` enum('SMS','EMAIL','WECHAT','ANDROID','IOS','VOICECALL','LINE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_sms_credits` int(11) DEFAULT NULL,
  `bulk_sms_credits` int(11) DEFAULT NULL,
  `user_credits` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`,`org_id`)
) 


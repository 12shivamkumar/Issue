

CREATE TABLE `org_sms_credits` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `message_class` enum('SMS','EMAIL','WECHAT','ANDROID','IOS','VOICECALL','LINE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_sms_credits` int(11) NOT NULL DEFAULT '0',
  `bulk_sms_credits` int(11) NOT NULL DEFAULT '0',
  `user_credits` int(11) NOT NULL DEFAULT '0',
  `bulk_credits_threshold` int(11) NOT NULL DEFAULT '100000',
  `value_credits_threshold` int(11) NOT NULL DEFAULT '100000',
  `created_by` bigint(20) NOT NULL,
  `last_updated_by` bigint(20) NOT NULL,
  last_updated timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_id` (`org_id`,`message_class`)
) 


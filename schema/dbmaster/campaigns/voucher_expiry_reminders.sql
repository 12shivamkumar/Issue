

CREATE TABLE `voucher_expiry_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `voucher_series_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `is_reminder_set` tinyint(1) NOT NULL DEFAULT '0',
  `alert_day_before_expiry` int(5) NOT NULL,
  `group_id` int(11) NOT NULL,
  `reminder_sms` mediumtext COLLATE utf8mb4_unicode_ci,
  `reminder_email` longtext COLLATE utf8mb4_unicode_ci,
  `message_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`org_id`),
  KEY `voucher_series_id` (`voucher_series_id`),
  KEY `voucher_org` (`org_id`,`voucher_series_id`)
) ;




CREATE TABLE `expiry_reminders_sent_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL DEFAULT '0',
  `program_id` int(11) NOT NULL,
  `reminders_sent` int(11) NOT NULL,
  `sms_template` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'SMS template used for sending reminders.',
  `sent_on` datetime NOT NULL,
  `event_log_id` bigint(20) NOT NULL DEFAULT -1,
  auto_update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY auto_update_time (auto_update_time),
  KEY org_auto_time_idx (org_id,auto_update_time)
) ;


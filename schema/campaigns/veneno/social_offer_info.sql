

CREATE TABLE `social_offer_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` int(11) unsigned NOT NULL,
  `message_id` int(11) unsigned NOT NULL,
  `message_version` int(11) NOT NULL DEFAULT '0',
  `voucher_series_id` int(11) unsigned NOT NULL,
  `remote_offer_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_message_version` (`org_id`,`message_id`,`message_version`),
  KEY `message_voucher` (`org_id`,`message_id`,`message_version`,`voucher_series_id`),
  KEY `auto_update_time` (`auto_update_time`)
) 


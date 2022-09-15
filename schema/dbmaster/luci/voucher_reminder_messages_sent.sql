CREATE TABLE `voucher_reminder_messages_sent` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) DEFAULT NULL,
  `coupon_series_id` int(11) DEFAULT NULL,
  `reminder_message_id` bigint(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL,
  `sent_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
   KEY `org_id_cpn_srs_id_idx` (`org_id`,`coupon_series_id`),
   KEY `message_id_idx` (`message_id`,`org_id`)
) ;

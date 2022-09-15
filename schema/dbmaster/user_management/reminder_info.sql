

CREATE TABLE `reminder_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `reminder_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `reminder_log_id` int(11) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`)
) ;


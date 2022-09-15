

CREATE TABLE `summary_report_nsadmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_id` int(11) NOT NULL,
  `delivery_status_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `msg_id` (`msg_id`,`delivery_status_id`)
) 


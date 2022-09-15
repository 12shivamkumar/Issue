

CREATE TABLE `veneno_batch_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `batch_type` enum('FEEDER','TAG_RESOLVER','DELIVERY_SERVER','INBOX_CONSUMER','NSADMIN_SERVER','FB_GATEWAY') COLLATE utf8mb4_unicode_ci DEFAULT 'FEEDER',
  `status` enum('PROCESSING','CLOSED','ERROR','FAILED', 'RETRY') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id` int(11) NOT NULL,
  `message_version` int(11) NOT NULL DEFAULT '0',
  `batch_id` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `error_report` longtext COLLATE utf8mb4_unicode_ci,
  `last_updated_on` datetime NOT NULL,
  `batch_start_id` int(11) DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `saviour_id` (`message_id`,`batch_id`,`batch_type`)
) 




CREATE TABLE `summary_report_veneno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_id` int(11) NOT NULL,
  `message_version` int(11) NOT NULL DEFAULT '0',
  `report_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `msg_id` (`msg_id`,`report_type`,`sub_type`,`message_version`)
) 


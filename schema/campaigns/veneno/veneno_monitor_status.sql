

CREATE TABLE `veneno_monitor_status` (
  `message_id` int(11) DEFAULT NULL,
  `message_version` int(11) NOT NULL DEFAULT '0',
  `processed_status` tinyint(1) DEFAULT NULL,
  `service_status` tinyint(1) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  UNIQUE KEY `message_id_version` (`message_id`,`message_version`)
) 


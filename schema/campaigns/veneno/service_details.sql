

CREATE TABLE `service_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `communication_message_id` int(11) unsigned NOT NULL,
  `message_version` int(11) NOT NULL DEFAULT '0',
  `batch_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picked_time` datetime DEFAULT NULL,
  `processed_count` int(11) DEFAULT NULL,
  `batches_processed` int(11) DEFAULT NULL,
  `last_updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `communication_message_id` (`communication_message_id`,`batch_type`,`message_version`)
) 


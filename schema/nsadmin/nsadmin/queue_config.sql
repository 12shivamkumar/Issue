

CREATE TABLE `queue_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exchange_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'If the queue is per gateway, then ideally this should be gateway''s short_name',
  `queue_name` enum('DELAYED_SCHEDULED','RECEIVED','READ','FINAL_STATE_TRANS','FINAL_STATE_BULK') COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_type` enum('SEDA','RABBITMQ') COLLATE utf8mb4_unicode_ci NOT NULL,
  `properties` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON value',
  `is_active` bit(1) NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) 


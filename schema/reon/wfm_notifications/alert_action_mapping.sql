-- start  Schema : `alert_action_mapping`
CREATE TABLE `alert_action_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alert_id` int(11) NOT NULL,
  `action_type` enum('EMAIL','SMS','FLOCK','LOG','SLACK') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipients` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alert_id` (`alert_id`)
);

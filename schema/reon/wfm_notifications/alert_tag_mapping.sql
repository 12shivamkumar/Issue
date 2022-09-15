-- start  Schema : `alert_tag_mapping`
CREATE TABLE `alert_tag_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alert_id` int(11) NOT NULL,
  `key_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator` enum('EQUALS','NOT_EQUALS','GREATER_THAN','LESS_THAN','CONTAINS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alert_id` (`alert_id`,`key_id`)
);

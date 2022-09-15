

CREATE TABLE `incoming_interaction_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('SMS','MISSED_CALL','ALL') COLLATE utf8mb4_unicode_ci DEFAULT 'ALL',
  `is_valid` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ;


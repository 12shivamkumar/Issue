

CREATE TABLE `inbox_drafts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `msg_state` enum('OPENED','PICKED','DELIVERED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'OPENED',
  `message_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `retrieved_time` datetime NOT NULL,
  `resolved_tags` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `msg_state` (`msg_state`,`message_id`,`recipient_id`)
) 


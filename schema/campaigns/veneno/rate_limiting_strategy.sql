CREATE TABLE `rate_limiting_strategy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `window` enum('DAILY','WEEKLY','MONTHLY') COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `last_updated_by` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`, `org_id`),
  UNIQUE KEY `org_id` (`org_id`,`window`,`channel`)
)
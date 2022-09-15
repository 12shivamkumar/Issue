CREATE TABLE `rate_limiting_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `strategy_id` int(11) NOT NULL,
  `window_value` int(11) NOT NULL,
  `no_of_attempts` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_id` (`org_id`,`user_id`,`strategy_id`)
)
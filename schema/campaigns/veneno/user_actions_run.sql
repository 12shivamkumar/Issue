CREATE TABLE `user_actions_run` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` enum('STARTED','PROCESSING','ENDED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('OPENED','CLICKED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_count` int(11) NOT NULL,
    `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `end_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `last_run` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
   `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `last_run` (`type`,`status`)
)
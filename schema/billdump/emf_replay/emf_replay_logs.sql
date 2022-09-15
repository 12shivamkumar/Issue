

CREATE TABLE `emf_replay_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT '0',
  `start_time` timestamp NULL DEFAULT NULL,
  `processed` int(11) unsigned DEFAULT '0',
  `failed` int(11) unsigned DEFAULT '0',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_id` (`unique_id`)
) 


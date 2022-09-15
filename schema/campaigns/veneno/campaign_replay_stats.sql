

CREATE TABLE `campaign_replay_stats` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(11) unsigned NOT NULL,
  `message_version` int(11) NOT NULL DEFAULT '1',
  `received_time` datetime NOT NULL,
  `picked_time` datetime NOT NULL,
  `skipped_count` int(11) NOT NULL,
  `skipped_error_csv` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) 


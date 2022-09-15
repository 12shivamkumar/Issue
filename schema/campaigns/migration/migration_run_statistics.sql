

CREATE TABLE `migration_run_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `run_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `campaign_count` int(11) NOT NULL DEFAULT '0' COMMENT 'migrated campaign count',
  `message_count` int(11) NOT NULL DEFAULT '0' COMMENT 'migrated messages count (respective schedulers are also migrated)',
  `no_of_affected_only_scheduler` int(11) NOT NULL DEFAULT '0' COMMENT 'This column will update in incremental run incase of stop start scheduler action has been performed on message',
  `not_migrated_msg_q_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'recurring pattern contains list of month',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_run_id_key` (`run_id`,`org_id`)
) 


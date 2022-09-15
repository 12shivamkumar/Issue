CREATE TABLE `message_s3_archival` (
 `id` bigint(20) NOT NULL AUTO_INCREMENT,
 `nsadmin_start_id` bigint(20) DEFAULT NULL COMMENT 'messages batch starting id',
 `nsadmin_end_id` bigint(20) DEFAULT NULL COMMENT 'messages batch ending id',
 `s3_path` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 's3 path for data of messages in range',
 `messages_start_time` datetime NOT NULL COMMENT 'origin time of first message in range',
 `messages_end_time` datetime NOT NULL COMMENT 'origin time of last message in range',
 `run_id` bigint(20) NOT NULL COMMENT 'archival run id',
 `is_active` tinyint(1) NOT NULL DEFAULT '1',
 `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`),
 KEY `id_range` (`nsadmin_start_id`,`nsadmin_end_id`)
)
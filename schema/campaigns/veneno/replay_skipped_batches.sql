

CREATE TABLE `replay_skipped_batches` (
 `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
 `org_id` int(11) unsigned NOT NULL,
 `message_id` int(11) unsigned NOT NULL,
 `message_version` int(11) NOT NULL DEFAULT '0',
 `batch_id` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
 `s3_key` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
 `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`),
 KEY `orgid_messageid_batchid_idx` (`org_id`,`message_id`,`message_version`,`batch_id`)
)


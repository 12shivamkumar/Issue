CREATE TABLE `points_expiry_update_summary`(
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `org_id` int(11) NOT NULL,
    `event_log_id` bigint(20) DEFAULT -1,
    `expiry_update_reason_type` enum('EARLY_EXPIRY', 'EXTEND_EXPIRY') NOT NULL,
    `expiry_update_reason_note` VARCHAR(255) COMMENT 'points expiry update reason comments',
    `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(`id`,`org_id`),
    KEY `idx_event` (`org_id`, `event_log_id`),
    KEY `auto_update_time` (`auto_update_time`)
);
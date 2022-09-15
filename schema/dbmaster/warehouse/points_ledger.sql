CREATE TABLE `points_ledger` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `org_id` int(11) NOT NULL,
    `cps_id` bigint(20) NOT NULL DEFAULT -1,
    `points` decimal(15,3) NOT NULL,
    `entry_type` enum('CREDIT','DEBIT','OPENING_BALANCE') NOT NULL,
    `is_active` tinyint(1) NOT NULL,
    `event_log_id` bigint(20) NOT NULL,
    `created_on` datetime NOT NULL,
    `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`, `org_id`),
    UNIQUE KEY `ledger_idx` (`org_id`, `cps_id`, `event_log_id`, `entry_type`),
    KEY `auto_update_time` (`auto_update_time`),
    KEY `org_auto_time_idx` (`org_id`,`auto_update_time`) ,
    KEY `event_log_idx` (`org_id`,`event_log_id`) ,
    KEY `cps_id_idx` (`org_id`, `cps_id`, `event_log_id`)
);
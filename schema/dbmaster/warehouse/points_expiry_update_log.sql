CREATE TABLE `points_expiry_update_log`(
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `org_id` int(11) NOT NULL,
    `pa_type` enum('POINT_AWARDED','POINT_AWARDED_BILL_PROMOTION','POINT_AWARDED_LINEITEM','POINT_AWARDED_LINEITEM_PROMOTION','POINT_AWARDED_CUSTOMER_PROMOTION') NOT NULL,
    `pa_id` bigint(20) NOT NULL,
    `points_expiry_update_summary_id` bigint(20) NOT NULL,
    `old_expiry_date` datetime NOT NULL COMMENT 'Points expiry date before update',
    `new_expiry_date` datetime NOT NULL COMMENT 'Points expiry date after update',
    `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(`id`,`org_id`),
    KEY `idx_pa` (`pa_type`, `pa_id`),
    KEY `auto_update_time` (`auto_update_time`)
);

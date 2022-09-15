CREATE TABLE `action_points_details`(
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `org_id` int(11) NOT NULL COMMENT 'The organization under which the points were awarded',
    `action_source_value_id` bigint(20) NOT NULL COMMENT 'foreign key to action source value details table',
    `points_allocated` DECIMAL(18,3) NOT NULL,
    `pa_id` bigint(20) NOT NULL,
    `pa_type` enum('POINT_AWARDED','POINT_AWARDED_BILL_PROMOTION','POINT_AWARDED_LINEITEM','POINT_AWARDED_LINEITEM_PROMOTION','POINT_AWARDED_CUSTOMER_PROMOTION') COLLATE utf8mb4_unicode_ci NOT NULL,
    `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(`id`,`org_id`),
    KEY `auto_update_time` (`auto_update_time`),
    KEY `source_value_id_fk` (`action_source_value_id`),
    KEY `pa_key` (`pa_type`, `pa_id`)
);

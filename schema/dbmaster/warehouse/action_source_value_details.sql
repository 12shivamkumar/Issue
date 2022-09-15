CREATE TABLE `action_source_value_details`( 
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`org_id` int(11) NOT NULL COMMENT 'The organization under which the points were awarded',
	`action_id` int(11) NOT NULL,
    `source_value_type` enum('BILL', 'TRACKER', 'POINTS_MULTIPLIER', 'FIXED', 'OTHER') NOT NULL,
    `unroll_type` enum('NONE', 'SLAB_UNROLL', 'TENDER_UNROLL', 'TENDER_SLAB_UNROLL', 'LINE_ITEM_UNROLL', 'LINE_ITEM_SLAB_UNROLL', 'LINE_ITEM_TENDER_UNROLL', 'LINE_ITEM_TENDER_SLAB_UNROLL') NOT NULL,
    `source_value_identifier_1` bigint(20) NOT NULL COMMENT 'source value identifier usually billId or event log id',
	`identifier_key` varchar(150) NOT NULL,
    `source_value_for_points` DECIMAL(18,3) DEFAULT NULL,
    `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(`id`,`org_id`),
    KEY `source_value_identifier` (`source_value_type`, `source_value_identifier_1`),
    UNIQUE KEY (`identifier_key`, `action_id`),
    KEY `auto_update_time` (`auto_update_time`)
);


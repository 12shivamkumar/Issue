

CREATE TABLE `custom_fields` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `org_id` int(11) NOT NULL,
    `field_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the custom field',
    `field_type` enum('PROMOTION','REDEMPTION_PURPOSE') COLLATE utf8mb4_unicode_ci NOT NULL,
    `value_type` enum('DOUBLE','STRING','STRING_LIST','DATE_TIME') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'type of value to be stored against the custom field',
    `created_on` datetime NOT NULL,
    `created_by` int(11) NOT NULL DEFAULT -1,
    `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`,`org_id`),
    UNIQUE KEY `field_label` (`org_id`,`field_type`,`field_name`)
);

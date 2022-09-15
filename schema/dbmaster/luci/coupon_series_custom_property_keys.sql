

CREATE TABLE `coupon_series_custom_property_keys` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `org_id` INT(11) NOT NULL,
    `name` VARCHAR(128) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
    `updated_by` INT(11) NOT NULL COMMENT 'user who updated the key',
    `is_valid` TINYINT(1) NOT NULL,
    `auto_update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id` , `org_id`),
    KEY `valid_key_name` (`org_id` , `name` , `is_valid`),
    KEY `valid_id` (`id` , `org_id` , `is_valid`)
);



CREATE TABLE `coupon_series_custom_property_key_value` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `org_id` INT(11) NOT NULL,
    `coupon_series_id` INT(11) NOT NULL,
    `key_id` INT(11) NOT NULL,
    `value` TEXT NOT NULL,
    `updated_by` INT(11) NOT NULL COMMENT 'user who updated the key',
    `is_valid` TINYINT(1) NOT NULL,
    `auto_update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id` , `org_id`),
    KEY `valid_id` (`id` , `org_id` , `is_valid` , `coupon_series_id`)
);

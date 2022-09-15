CREATE TABLE `header_overrides` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `mapping_id` bigint(20) NOT NULL,
    `header_name` varchar(255) NOT NULL,
    `header_value` varchar(2048) NOT NULL,
    `is_valid` tinyint(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`),
    KEY `mapping_id` (`mapping_id`)
);
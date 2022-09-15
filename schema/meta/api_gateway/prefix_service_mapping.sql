CREATE TABLE `prefix_service_mapping` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `prefix` varchar(100) NOT NULL,
    `service_name` varchar(100) NOT NULL,
    `service_port` varchar(5) NOT NULL,
    `strip_prefix` tinyint(1) NOT NULL DEFAULT 1,
    `is_valid` tinyint(1) NOT NULL DEFAULT 1,
    `is_external` tinyint(1) NOT NULL DEFAULT 0,
    `timeout` int(11) NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB;
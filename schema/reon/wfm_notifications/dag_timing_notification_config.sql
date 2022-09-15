CREATE TABLE `dag_timing_notification_config` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `dag_type` varchar(50) ,
    `base_minutes` INT(11) NOT NULL,
    `buffer_minutes` INT(11) NOT NULL,
    `is_active` TINYINT(1) DEFAULT 1,
    `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `dag_type_idx` (`dag_type`)
);
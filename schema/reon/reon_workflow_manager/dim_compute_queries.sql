CREATE TABLE `dim_compute_queries` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `org_id` int(11) NOT NULL,
    `dimension_name` varchar(100) NOT NULL,
    `auto_update_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `completed_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `dim_compute_query` MEDIUMTEXT NOT NULL,
    `is_valid` boolean NOT NULL DEFAULT TRUE,
    `run_id` int(11) NOT NULL DEFAULT -1,
    PRIMARY KEY (`id`),
    INDEX org_dim_index (org_id, dimension_name, is_valid),
    INDEX org_run_index (org_id, run_id)
);
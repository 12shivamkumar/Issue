CREATE TABLE `dim_compute_details` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `run_id` int(11) NOT NULL,
    `org_id` int(11) NOT NULL,
    `dimension_name` varchar(100) NOT NULL,
    `auto_update_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `is_recomputed` boolean NOT NULL,
    `reason_for_recompute` enum('TABLE_CHANGED','QUERY_CHANGED','BOTH_CHANGED','FULL_RUN','CONDITIONAL_DIM_COMPUTE_DISABLED') COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
    `additional_info` text COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX run_id_index (run_id),
    INDEX org_dim_details_index (org_id, dimension_name)
);
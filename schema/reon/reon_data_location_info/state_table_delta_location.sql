CREATE TABLE `state_table_delta_location` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `org_id` INT(11) NOT NULL,
    `table_name` VARCHAR(100) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
    `path` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
    `run_id` INT(11) NOT NULL,
    `is_full_run` TINYINT(1) NOT NULL,
    `run_date` DATETIME NOT NULL,
    `is_valid` TINYINT(1) NOT NULL DEFAULT 1,
    `last_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    INDEX `org_last_modified_index` USING BTREE (`org_id`, `last_modified`),
    INDEX `org_table_idx` USING BTREE (`org_id`, `table_name`),
    INDEX `org_table_isvalid_idx` USING BTREE (`table_name`, `is_valid`));
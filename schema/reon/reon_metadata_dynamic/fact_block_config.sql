CREATE TABLE `fact_block_config` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `org_id` INT(11) NOT NULL COMMENT 'Org Id for this configuration',
  `fact_name` VARCHAR(55) NOT NULL,
  `num_blocks` INT(11) NOT NULL DEFAULT 30,
  `auto_update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `org_fact_idx` USING BTREE (`org_id`, `fact_name`));
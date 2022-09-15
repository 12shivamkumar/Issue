CREATE TABLE `fact_partitioner` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `org_id` INT NOT NULL,
  `partition_unit` ENUM('DAY', 'MONTH', 'YEAR') NOT NULL DEFAULT 'YEAR',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `org_idx` (`org_id`));
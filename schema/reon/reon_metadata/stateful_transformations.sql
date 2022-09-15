CREATE TABLE `stateful_transformations` (
  `id_str` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `name` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `json` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `scope_id` INT NOT NULL,
  `is_active` TINYINT NOT NULL,
  `added_on` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_str`),
  UNIQUE INDEX `name_scope` USING BTREE (`name`, `scope_id`))
ENGINE = InnoDB;
CREATE TABLE `client` (
`id` INT(11) NOT NULL, 
`code` VARCHAR(50) NOT NULL,
`name` VARCHAR(100) NOT NULL,
`description` VARCHAR(255) NULL,
`status_updates_enabled` BOOLEAN NOT NULL DEFAULT 0,
PRIMARY KEY (`id`) 
)
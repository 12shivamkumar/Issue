CREATE TABLE `released_offset` (
  `id` int NOT NULL AUTO_INCREMENT,
  `offset` int NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;


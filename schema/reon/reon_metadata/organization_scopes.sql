CREATE TABLE `organization_scopes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `org_id` int NOT NULL,
  `scope_id` int NOT NULL,
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
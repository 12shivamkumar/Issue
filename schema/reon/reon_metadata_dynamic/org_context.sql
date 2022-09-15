CREATE TABLE `org_context` (
  `id` int NOT NULL AUTO_INCREMENT,
  `org_id` int NOT NULL,
  `context_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `context_value` int NOT NULL,
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
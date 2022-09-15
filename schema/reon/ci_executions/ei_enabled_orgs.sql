

CREATE TABLE `ei_enabled_orgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `dso_enabled` enum('1') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE(`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25  COLLATE=utf8mb4_unicode_ci;


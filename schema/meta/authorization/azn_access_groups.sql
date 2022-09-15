
CREATE TABLE `azn_access_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL,
  `is_system_managed` tinyint(1) NOT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`, `org_id`),
  UNIQUE KEY (`org_id`, `name`)
) ; -- has AUTO_INCREMENT = 100. set in the bootstrap app reserving for system managed access groups
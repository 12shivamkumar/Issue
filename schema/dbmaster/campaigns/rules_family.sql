

CREATE TABLE `rules_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_id` bigint(20) NOT NULL DEFAULT '1',
  `created_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `expiry_date` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`org_id`)
) ;


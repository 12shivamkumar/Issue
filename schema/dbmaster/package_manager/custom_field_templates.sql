

CREATE TABLE `custom_field_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` bigint(20) NOT NULL DEFAULT '-1',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ;


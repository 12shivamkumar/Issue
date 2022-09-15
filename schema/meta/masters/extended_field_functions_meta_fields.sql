

CREATE TABLE `extended_field_functions_meta_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_value` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `function_id` int(11) NOT NULL,
  `is_mandatory` tinyint(1) NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `possible_values` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
)
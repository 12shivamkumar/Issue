

CREATE TABLE `custom_dimension_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) DEFAULT NULL,
  `dimension_id` int(11) DEFAULT NULL,
  `label` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) 


-- start  schema : `external_dimension`
CREATE TABLE `external_dimension` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `dim_type` enum('STANDARD_CONSTANT','STANDARD','USER_DEFINED','SRC_DEFINED','EXTERNAL_SRC') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `version` bigint(20) NOT NULL,
  `is_large` tinyint(1) NOT NULL DEFAULT '0',
  `is_elastic_indexed` tinyint(4) NOT NULL DEFAULT '0',
  `added_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dim_table_name` (`name`,`scope_id`,`version`),
  KEY `scope_idx` (`is_active`,`scope_id`,`version`),
  KEY `name_idx` (`is_active`,`name`,`scope_id`)
);

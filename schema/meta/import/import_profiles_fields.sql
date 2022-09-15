

CREATE TABLE `import_profiles_fields` (
  `profile_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_label` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_data_type` enum('INT','VARCHAR','DATETIME','TEXT','FLOAT','VARBINARY','DOUBLE','BIGINT','DECIMAL(15, 3)','DECIMAL(20, 5)') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_length` int(11) NOT NULL,
  `field_validation_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_mandatory` tinyint(1) NOT NULL DEFAULT '0',
  `info_text` mediumtext COLLATE utf8mb4_unicode_ci,
  `possible_values` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`profile_id`,`field_id`)
) 


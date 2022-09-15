

CREATE TABLE `import_points_engine_configs` (
  `org_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `pe_program_details` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`template_id`),
  KEY `template_idx` (`org_id`,`template_id`)
) 


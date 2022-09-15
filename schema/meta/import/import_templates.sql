

CREATE TABLE `import_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `create_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `is_valid` int(1) NOT NULL,
  `valid_till` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id` (`profile_id`)
) 


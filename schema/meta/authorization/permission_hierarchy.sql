

CREATE TABLE `permission_hierarchy` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'reference',
  `parent_permission_id` int(11) NOT NULL,
  `child_permission_id` int(11) NOT NULL,
  `notes` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `child_permission_id` (`child_permission_id`)
) 


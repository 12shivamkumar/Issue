

CREATE TABLE `action_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `last_updated_on` datetime NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `action_id` (`action_id`,`permission_id`)
) 


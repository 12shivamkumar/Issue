

CREATE TABLE `resources_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `parent_resource_id` int(11) NOT NULL,
  `child_resource_id` int(11) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `module_id` (`module_id`,`parent_resource_id`,`child_resource_id`)
) 


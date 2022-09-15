

CREATE TABLE `group_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) NOT NULL COMMENT 'refers to id in groups',
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `ref_id_index` (`ref_id`)
) 


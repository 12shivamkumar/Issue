

CREATE TABLE `files_tags_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `version_id` int(11) NOT NULL DEFAULT '0',
  `tag_id` int(11) NOT NULL,
  `tag_value_id` int(11) NOT NULL,
  `tagged_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tagged_by` bigint(20) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `file_id` (`file_id`,`tag_id`,`version_id`),
  KEY `file_version_idx` (`file_id`,`is_active`,`version_id`),
  KEY `tag_value_idx` (`tag_id`,`tag_value_id`,`is_active`)
) 


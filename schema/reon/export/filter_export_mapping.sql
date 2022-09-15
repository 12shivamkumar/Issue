

CREATE TABLE `filter_export_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL COMMENT 'The id of the template configured from the export UI client',
  `reminder_id` int(11) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `export_template_idx` (`org_id`,`template_id`)
) 


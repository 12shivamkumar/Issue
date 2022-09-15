

CREATE TABLE `template_channel_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `template_type_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `ref_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `template_id` (`template_id`,`template_type_id`,`org_id`,`ref_id`,`channel_id`)
) ;


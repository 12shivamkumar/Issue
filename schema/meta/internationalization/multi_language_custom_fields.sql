CREATE TABLE `multi_language_custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `field_name` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`, `org_id`),
  UNIQUE KEY `org_id_entity_id_field_name_idx` (`org_id`, `entity_id`, `field_name`)
) ;
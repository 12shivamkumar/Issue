CREATE TABLE `entity_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `entity_type` varchar(50)  NOT NULL DEFAULT 'CARD',
  `entity_value` bigint(20)  NOT NULL,
  `mapped_entity_type` varchar(50)  NOT NULL DEFAULT 'TILL',
  `mapped_entity_value` bigint(20)  NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `last_updated_on` datetime NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `auto_update_time` (`auto_update_time`),
  KEY `entity_key` (`org_id`,`entity_type`,`entity_value`),
  KEY `mapped_entity_key` (org_id,mapped_entity_type,mapped_entity_value)
);